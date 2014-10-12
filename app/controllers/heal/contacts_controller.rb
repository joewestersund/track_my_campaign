class Heal::ContactsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit, :index]

  # GET /contacts
  # GET /contacts.json
  def index
    conditions_string, parameters_hash, join_tables = get_conditions
    conditions = [conditions_string, parameters_hash]

    if join_tables.nil?
      @contacts = current_db.contacts.where(get_conditions).order(:first_name, :last_name)
    else
      @contacts = current_db.contacts.joins(join_tables).where(conditions).order(:first_name, :last_name)
    end

    if request.format == :html
      #only do paging if in html format, not if in xlsx
      @contacts = @contacts.page(params[:page]).per_page(page_size)
    end
    respond_to do |format|
      format.html
      #format.xls
      format.xlsx
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Heal::Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Heal::Contact.new(contact_params)
    @contact.database_instance = current_db

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        set_select_options
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    notice = 'Contact was successfully destroyed'
    begin
      @contact.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @contact.errors.add(:base, e)
      notice = "Contact could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_contacts_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = current_db.contacts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:heal_contact).permit(:honorific_id, :first_name, :last_name, :title, :organization_name, :organization_type_id, {city_ids: []}, :office_phone_number, :cell_phone_number, :fax, :email, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :interest_level_id, :heal_champion, :heal_champion_notes, :position_type_id, :website, :notes, :photo)
    end

    def set_select_options
      @honorifics = current_db.honorifics.order(:order_in_list)
      @position_types = current_db.position_types.order(:order_in_list)
      @cities = current_db.cities.order(:name)
      @organization_types = current_db.organization_types.order(:order_in_list)
      @interest_levels = current_db.interest_levels.order(:order_in_list)
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:first_name,"ILIKE",:first_name,params)
      sf.add_condition(:last_name,"ILIKE",:last_name,params)
      sf.add_condition(:title,"ILIKE",:title,params)
      sf.add_condition(:position_type_id,"=",:position_type_id,params)
      sf.add_condition(:organization_name,"ILIKE",:organization_name,params)
      sf.add_condition(:organization_type_id,"=",:organization_type_id,params)
      sf.add_condition(:address_city,"ILIKE",:address_city,params)
      sf.add_condition(:address_state,"ILIKE",:address_state,params)
      sf.add_condition(:address_zip,"ILIKE",:address_zip,params)
      sf.add_condition(:interest_level_id,"=",:interest_level_id,params)
      sf.add_condition(:heal_champion,"=",:heal_champion,params)
      sf.add_condition(:notes,"ILIKE",:notes,params)

      sf.add_condition(:city_id,"=",:city_id, params,{join_table: :cities, join_object_name: :cities_contacts})

      sf.get_search_filter
    end
end
