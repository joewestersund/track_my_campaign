class Heal::ContactImportsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_select_options, only: [:new, :template]

  # GET /contact_imports/new
  def new
    @contact_import = Heal::ContactImport.new
  end

  # POST /contact_imports
  # POST /contact_imports.json
  def create
    @contact_import = Heal::ContactImport.new(params[:heal_contact_import])

    respond_to do |format|
      if @contact_import.save(current_db)
        format.html { redirect_to heal_contacts_path, notice: 'Contacts were successfully imported.' }
      else
        set_select_options
        format.html { render action: 'new' }
      end
    end
  end

  def template
    respond_to do |format|
      format.xlsx
    end
  end

  private

    def set_select_options
      @interest_levels = current_db.interest_levels.order(:order_in_list)
      @position_types = current_db.position_types.order(:order_in_list)
      @honorifics = current_db.honorifics.order(:order_in_list)
      @organization_types = current_db.organization_types.order(:order_in_list)
    end

end
