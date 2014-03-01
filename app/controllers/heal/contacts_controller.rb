class Heal::ContactsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = current_db.contacts.order(:first_name, :last_name)
    respond_to do |format|
      format.html
      format.csv { send_data @contacts.to_csv }
      format.xls
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
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to heal_contacts_url }
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
      params.require(:heal_contact).permit(:first_name, :last_name, :title, :organization_name, :organization_type, {city_ids: []}, :office_phone_number, :cell_phone_number, :fax, :email, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :interest_level_id, :HEAL_champion, :HEAL_champion_notes, :position_type_id, :notes, :photo)
    end

    def set_select_options
      @honorifics = current_db.honorifics.order(:order_in_list)
      @position_types = current_db.position_types.order(:order_in_list)
      @cities = current_db.cities.order(:name)
      @organization_types = current_db.organization_types.order(:order_in_list)
      @interest_levels = current_db.interest_levels.order(:order_in_list)
    end
end
