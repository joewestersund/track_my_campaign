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
    @city_designations = current_db.city_designations
    @cities = current_db.cities.where(get_cities_conditions).order(:state, :name).page(params[:page]).per_page(page_size)
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

  private

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
      sf.add_condition(:state_median_income,">=",:min_state_median_income,params)
      sf.add_condition(:state_median_income,"<=",:max_state_median_income,params)
      sf.add_condition(:city_median_income,">=",:min_city_median_income,params)
      sf.add_condition(:city_median_income,"<=",:max_city_median_income,params)
      sf.add_condition(:city_designation_id,"=",:city_designation_id,params)

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
      sf.add_condition(:city_id,"=",:city_id, params,{join_table: :cities, join_object_name: :cities_contacts})

      sf.get_search_filter
    end

end