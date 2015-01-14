class Heal::ReportsController < ApplicationController
  before_action :check_current_db_exists

  # GET /to_do/1
  # GET /to_do/1.json
  def to_do
    @tasks_assigned_to_me = current_db.followup_tasks.where(assigned_to_id: current_user.id, completed: false).order("due_date, description").page(params[:assigned_to_me_page]).per_page(3)
    @tasks_assigned_by_me = current_db.followup_tasks.where(assigned_by_id: current_user.id, completed: false).order("due_date, description").page(params[:assigned_by_me_page]).per_page(3)
    @milestones = current_db.milestones.joins(:city, :milestone_type).where(assigned_to_id: current_user.id, completion_date: nil).order('cities.name, milestone_types.order_in_list').page(params[:milestones_page]).per_page(3)
  end

  def cities_summary
    @city_designations = current_db.city_designations.order(:order_in_list)
    @policies = current_db.policies.order(:order_in_list)

    @cities = get_cities_query.order(:state, :name).page(params[:page]).per_page(page_size)
  end

  def policy_grid
    @city_designations = current_db.city_designations.order(:order_in_list)
    @policies = current_db.policies.order(:order_in_list)

    @cities = get_cities_query.order(:state, :county, :name).page(params[:page]).per_page(page_size)
  end

  def contacts_summary
    @cities = current_db.cities.order(:name)
    @interest_levels = current_db.interest_levels.order(:order_in_list)

    conditions_string, parameters_hash, join_tables = get_contacts_conditions
    conditions = [conditions_string, parameters_hash]

    if join_tables.nil?
      @contacts = current_db.contacts.joins(:communications).where(get_contacts_conditions).group('contacts.id').order('max(communications.date) desc, contacts.first_name, contacts.last_name').page(params[:page]).per_page(page_size)
    else
      @contacts = current_db.contacts.joins(:communications).joins(join_tables).where(conditions).group('contacts.id').order('max(communications.date) desc, contacts.first_name, contacts.last_name').page(params[:page]).per_page(page_size)
    end
  end

  def progress_report

    #get list of cities by designation, including all cities
    @cities_by_achievement = get_cities_by_achievement(current_db.cities, current_db.city_designations)

    #get list of cities by designation, including all cities
    if current_db.cities.where.not(minorities_more_than_fifteen_percent: nil).count > 0
      @cities_by_achievement_minorities_15_percent = get_cities_by_achievement(current_db.cities.where(minorities_more_than_fifteen_percent: true), current_db.city_designations)
    end

    #only count resolutions and policies that happened after the campaign started
    @cities_with_achievement = current_db.cities.joins("INNER JOIN (SELECT DISTINCT city_id FROM city_designation_achievements) AS cda ON cities.id = cda.city_id")
    @cities_with_resolution = current_db.cities.joins("INNER JOIN (SELECT DISTINCT city_id FROM resolutions WHERE prior_to_joining_campaign = false) AS r ON cities.id = r.city_id")
    @cities_with_policies = current_db.cities.joins("INNER JOIN (SELECT DISTINCT city_id FROM policy_adoptions WHERE prior_to_joining_campaign = false) AS pa ON cities.id = pa.city_id")

    @cities_with_activity = current_db.cities.joins("LEFT JOIN (SELECT DISTINCT city_id FROM city_designation_achievements) AS cda ON cities.id = cda.city_id")
    @cities_with_activity = @cities_with_activity.joins("LEFT JOIN (SELECT DISTINCT city_id FROM resolutions WHERE prior_to_joining_campaign = false) AS r ON cities.id = r.city_id")
    @cities_with_activity = @cities_with_activity.joins("LEFT JOIN (SELECT DISTINCT city_id FROM policy_adoptions WHERE prior_to_joining_campaign = false) AS pa ON cities.id = pa.city_id")
    @cities_with_activity = @cities_with_activity.where("cda.city_id IS NOT NULL OR r.city_id IS NOT NULL OR pa.city_id IS NOT NULL")

    #list the cities that have resolved or adopted each policy
    @cities_by_policy = []
    current_db.policies.order(:order_in_list).each do |p|
      city_ids = current_db.resolutions.joins(:policies).where("policies_resolutions.policy_id = (?) and prior_to_joining_campaign = false", p.id).select(:city_id).group(:city_id)
      city_id_array = city_ids.map{|c| c.city_id}
      cities_resolving = current_db.cities.where(id: city_id_array)
      city_ids = current_db.policy_adoptions.joins(:policies).where("policies_policy_adoptions.policy_id = (?) and prior_to_joining_campaign = false", p.id).select(:city_id).group(:city_id)
      city_id_array = city_ids.map{|c| c.city_id}
      cities_adopting = current_db.cities.where(id: city_id_array)
      @cities_by_policy << { policy_id: p.id, policy_name: p.full_name, cities_resolving: cities_resolving.count, cities_resolving_population: cities_resolving.sum(:population), cities_adopting: cities_adopting.count, cities_adopting_population: cities_adopting.sum(:population)}
    end

    #communications by type
    communications_by_type = []
    current_db.communication_types.order(:order_in_list).each do |ct|
      communications = current_db.communications.where(communication_type_id: ct.id)
      city_ids = current_db.cities.joins(:communications).where("communications.communication_type_id = (?)", ct.id).select(:city_id).uniq
      contact_ids = current_db.contacts.joins(:communications).where("communications.communication_type_id = (?)", ct.id).select(:contact_id).uniq
      communications_by_type << { communication_type_id: ct.id, communication_type_name: ct.name, num_communications: communications.count, cities_involved: city_ids.count, contacts_involved: contact_ids.count, total_minutes: communications.sum(:duration_minutes) }
    end

    #add a line for all communications
    communications = current_db.communications
    city_ids = current_db.cities.joins(:communications).select(:city_id).uniq
    contact_ids = current_db.contacts.joins(:communications).select(:contact_id).uniq
    communications_by_type << { communication_type_id: nil, communication_type_name: "All Communication Types", num_communications: communications.count, cities_involved: city_ids.count, contacts_involved: contact_ids.count, total_minutes: communications.sum(:duration_minutes) }
    @communications_by_type = communications_by_type

    #communications by topic
    communications_by_topic = []
    current_db.topics.order(:order_in_list).each do |topic|
      communications = current_db.communications.joins(:topics).where("communications_topics.topic_id = ?", topic.id)
      communication_ids = communications.map {|com| com.id }
      city_ids = current_db.cities.joins(:communications).where("cities_communications.communication_id IN (?)", communication_ids).select(:city_id).uniq
      contact_ids = current_db.contacts.joins(:communications).where("communications_contacts.communication_id IN (?)", communication_ids).select(:contact_id).uniq
      communications_by_topic << { topic_id: topic.id, topic_name: topic.name, num_communications: communications.count, cities_involved: city_ids.count, contacts_involved: contact_ids.count, total_minutes: communications.sum(:duration_minutes) }
    end

    #add a line for all communications
    communications = current_db.communications
    city_ids = current_db.cities.joins(:communications).select(:city_id).uniq
    contact_ids = current_db.contacts.joins(:communications).select(:contact_id).uniq
    communications_by_topic << { topic_id: nil, topic_name: "All Topics", num_communications: communications.count, cities_involved: city_ids.count, contacts_involved: contact_ids.count, total_minutes: communications.sum(:duration_minutes) }
    @communications_by_topic = communications_by_topic

    #Heal champions
    @heal_champions = current_db.contacts.where(heal_champion: true).order(:first_name, :last_name, :organization_name).page(params[:heal_champions_page]).per_page(page_size)

  end

  def recent_activity
    params[:days_to_show] = 7 if params[:days_to_show].nil? #default to last 7 days
    @days_to_show = params[:days_to_show]

    conditions = "updated_at > current_date - #{@days_to_show}"
    order_by = "updated_at DESC"

    recent_activity = []

    #note: has_and_belongs_to_many join tables don't have an updated_at field
    #so we can't use this technique to keep track of when a city has been added to a communication,
    #for instance.

    recent_activity += get_recent_activity(current_db.cities.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.city_designations.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.city_designation_achievements.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.communications.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.communication_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.contacts.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.followup_tasks.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.honorifics.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.interest_levels.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.jurisdiction_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.league_divisions.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.milestones.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.milestone_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.organization_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.policies.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.policy_adoptions.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.position_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.resolutions.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.status_types.where(conditions).order(order_by))
    recent_activity += get_recent_activity(current_db.topics.where(conditions).order(order_by))

    recent_activity.sort!{|a,b| b[:date] <=> a[:date]}  #descending order by datetime stamp

    #paginate the array
    current_page = (params[:page].present? ? params[:page] : 1)
    activity_page_size = 15
    page = recent_activity.paginate(page: current_page, per_page: activity_page_size)

    @recent_activity = WillPaginate::Collection.create(current_page, activity_page_size, recent_activity.length) do |pager|
      pager.replace page
    end
  end

  private
    def get_cities_query
      cities = current_db.cities
      do_id_subquery = false

      if params[:city_designation_id] == HealHelper::NONE_OF_THE_ABOVE_VALUE_IN_DROPDOWN
        #the user wants a list of all cities that don't have any city designation achievements.
        cities = cities.joins("LEFT JOIN city_designation_achievements cda ON cities.id = cda.city_id").where("cda.id IS NULL")
      elsif params[:city_designation_id].present?
        #only do this join if we're filtering down to only one city_designation.
        #otherwise we might have multiple rows for one city.

        cda_ids = current_db.city_designation_achievements.joins(:city_designation).joins("INNER JOIN
        (SELECT city_id, max(order_in_list) as max_order
        FROM city_designation_achievements cda INNER JOIN city_designations cd
        ON cda.city_designation_id = cd.id GROUP BY city_id) AS MAXQUERY
        ON city_designation_achievements.city_id = MAXQUERY.city_id
        AND order_in_list = MAXQUERY.max_order")

        #query if going by date, with nil date always last
        #cda_ids = current_db.city_designation_achievements.joins("INNER JOIN
        #(select city_id, max(coalesce(cda.date,'1/1/1900')) as maxdate from city_designation_achievements cda
        #GROUP BY city_id) AS MAX_QUERY ON city_designation_achievements.city_id = MAX_Query.city_id
        #AND coalesce(city_designation_achievements.date,'1/1/1900') = MAX_QUERY.maxdate").where.not(id: nil).select(:id)

        cities = cities.joins(:city_designation_achievements).where("city_designation_achievements.id IN (?)", cda_ids)
      end

      if params[:resolution_policy_id].present?
        #only do this join if we're filtering down to only one resolution_policy_id.
        #otherwise we might have multiple rows for one city.
        cities = cities.joins(resolutions: [:policies])
        do_id_subquery = true
      end

      if params[:policy_adoption_policy_id].present?
        #only do this join if we're filtering down to only one policy_adoption_policy_id.
        #otherwise we might have multiple rows for one city.
        cities = cities.joins(policy_adoptions: [:policies])
        do_id_subquery = true
      end

      if params[:has_been_communicated_with].present?
        #the user only wants to see cities that either have a recorded communication, or don't.
        city_ids = current_db.cities.joins(:communications).select(:city_id).uniq
        city_id_array = city_ids.map{|c| c.city_id}
        if params[:has_been_communicated_with] == "0"   #no
          cities = cities.where("cities.id NOT IN (?)", city_id_array)
        else #yes
          cities = cities.where("cities.id IN (?)", city_id_array)
        end
      end

      if do_id_subquery
        #have to do this, since a city can adopt a policy (or resolve a policy) more than once.
        #this prevents 1 city from having multiple rows under that circumstance.
        city_ids = cities.where(get_cities_conditions).select("cities.id").group("cities.id").all
        return current_db.cities.where(id: city_ids)
      else
        return cities.where(get_cities_conditions)
      end

    end

    def get_cities_conditions
      sf = SearchFilter.new

      sf.add_condition(:name,"ILIKE",:name,params)
      sf.add_condition(:state,"ILIKE",:state,params)
      sf.add_condition(:county,"ILIKE",:county,params)
      sf.add_condition(:jurisdiction_type_id,"=",:jurisdiction_type_id,params)
      sf.add_condition(:league_division_id,"=",:league_division_id,params)
      sf.add_condition(:population,">=",:min_population,params)
      sf.add_condition(:population,"<=",:max_population,params)
      sf.add_condition(:kp_service_area,"=",:kp_service_area,params)
      sf.add_condition(:under_resourced_or_disease_burden,"=",:under_resourced_or_disease_burden,params)
      sf.add_condition(:minorities_more_than_fifteen_percent,"=",:minorities_more_than_fifteen_percent,params)
      sf.add_condition(:percent_obesity,">=",:min_percent_obesity,params)
      sf.add_condition(:percent_obesity,"<=",:max_percent_obesity,params)
      sf.add_condition(:state_median_income,">=",:min_state_median_income,params)
      sf.add_condition(:state_median_income,"<=",:max_state_median_income,params)
      sf.add_condition(:city_median_income,">=",:min_city_median_income,params)
      sf.add_condition(:city_median_income,"<=",:max_city_median_income,params)
      sf.add_condition(:policy_change_in_progress,"=",:policy_change_in_progress,params)

      #conditions in join tables
      if params[:city_designation_id] != HealHelper::NONE_OF_THE_ABOVE_VALUE_IN_DROPDOWN
        sf.add_condition("city_designation_achievements.city_designation_id","=",:city_designation_id,params)
      end

      if params[:resolution_policy_id].present? && params[:policy_adoption_policy_id].present?
        #if filtering by both, need special handling since joining to policy table twice causes field name changes.
        sf.add_condition("policies_resolutions.policy_id","=",:resolution_policy_id,params)
        sf.add_condition("policies_policy_adoptions_join.policy_id","=",:policy_adoption_policy_id,params)
      else
        sf.add_condition("policies_resolutions.policy_id","=",:resolution_policy_id,params)
        sf.add_condition("policies_policy_adoptions.policy_id","=",:policy_adoption_policy_id,params)
      end

      sf.get_search_filter
    end

    def get_contacts_conditions
      sf = SearchFilter.new

      sf.add_condition(:first_name,"ILIKE",:first_name,params)
      sf.add_condition(:last_name,"ILIKE",:last_name,params)
      sf.add_condition(:organization_name,"ILIKE",:organization_name,params)
      #sf.add_condition(:interest_level_id,"=",:interest_level_id,params,)
      sf.add_condition('contacts.interest_level_id',"=",:interest_level_id,params,)
      sf.add_condition(:heal_champion,"=",:heal_champion,params)
      sf.add_condition(:active,"=",:active,params)
      sf.add_condition(:city_id,"=",:city_id, params,{join_table: :cities, join_object_name: :cities_contacts})

      sf.get_search_filter
    end

    def get_recent_activity(query_result)
      query_result.map { |item| item.create_update_description}
    end

    def get_cities_by_achievement(cities_list, city_designations_list)
      cities_by_achievement = []
      city_ids = []

      cities_by_achievement << { city_designation_name: "All cities in the database", number_of_cities: cities_list.count, total_population: cities_list.sum(:population), achievement_order_in_list: nil, city_designation_id: nil }

      #cities can have more than one designation over time, but we'll assume they can only go up.
      #so, we start from the highest designation and count down
      #and ignore each city_id if we see it again after that
      city_designations_list.order(order_in_list: :desc).each do |cd|
        cities = cities_list.joins(:city_designation_achievements).where("city_designation_id = #{cd.id}")
        if city_ids.count > 0
          cities = cities.where("city_id NOT IN (?)",city_ids)
        end

        #add the current list of city ids to the array, so we don't count them again for the next designation.
        city_ids += cities.map{ |c| c.id}
        cities_by_achievement << { city_designation_name: cd.name, number_of_cities: cities.count, total_population: cities.sum(:population), achievement_order_in_list: cd.order_in_list, city_designation_id: cd.id }
      end
      #add the cities with no achievements yet
      cities = cities_list.joins("LEFT JOIN city_designation_achievements cda ON cities.ID = cda.city_id").where("cda.id IS NULL")
      cities_by_achievement << { city_designation_name: "None", number_of_cities: cities.count, total_population: cities.sum(:population), achievement_order_in_list: nil, city_designation_id: HealHelper::NONE_OF_THE_ABOVE_VALUE_IN_DROPDOWN }

      #reverse the order, so "none" comes first.
      return cities_by_achievement.reverse

    end

end