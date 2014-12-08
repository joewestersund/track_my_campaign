class Heal::ContactImportsController < ApplicationController

  # GET /contact_imports/new
  def new
    @contact_import = Heal::ContactImport.new
    @interest_levels = current_db.interest_levels.order(:order_in_list)
    @position_types = current_db.position_types.order(:order_in_list)
    @honorifics = current_db.honorifics.order(:order_in_list)
    @organization_types = current_db.organization_types.order(:order_in_list)

  end

  # POST /contact_imports
  # POST /contact_imports.json
  def create
    @contact_import = Heal::ContactImport.new(params[:heal_contact_import])

    respond_to do |format|
      if @contact_import.save(current_db)
        format.html { redirect_to heal_contacts_path, notice: 'Contacts were successfully imported.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

end
