class Heal::ContactImportsController < ApplicationController

  # GET /contact_imports/new
  def new
    @contact_import = Heal::ContactImport.new
  end

  # POST /contact_imports
  # POST /contact_imports.json
  def create
    @contact_import = Heal::ContactImport.new(params[:contact_import])

    respond_to do |format|
      if @contact_import.save
        format.html { redirect_to heal_contacts_path, notice: 'Contacts were successfully imported.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

end
