class DatabaseInstancesController < ApplicationController
  before_action :check_signed_in_user
  before_action :check_admin_user, except: [:select_database, :home]
  before_action :set_database_instance, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit]

  # GET /database_instances
  # GET /database_instances.json
  def index
    @database_instances = DatabaseInstance.page(params[:page]).per_page(page_size)
  end

  def select_database
    @database_instances = db_instances_this_user
  end

  def home
    #set this as the current db, and pass it to the view
    if set_current_db(DatabaseInstance.find(params[:id]))
      @database_instance = current_db
    else
      redirect_to 'select_database'
    end
  end

  # GET /database_instances/1
  # GET /database_instances/1.json
  def show
  end

  # GET /database_instances/new
  def new
    @database_instance = DatabaseInstance.new
  end

  # GET /database_instances/1/edit
  def edit
  end

  # POST /database_instances
  # POST /database_instances.json
  def create
    if database_instance_params[:type] == "Heal::DatabaseInstance"
      @database_instance = Heal::DatabaseInstance.new(database_instance_params)
    else
      redirect_to "edit" # this is an error
    end

    respond_to do |format|
      if @database_instance.save
        format.html { redirect_to database_instance_path(@database_instance), notice: 'Database instance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @database_instance }
      else
        format.html { render action: 'new' }
        format.json { render json: @database_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database_instances/1
  # PATCH/PUT /database_instances/1.json
  def update
    respond_to do |format|
      if @database_instance.update(database_instance_params)
        format.html { redirect_to database_instances_path, notice: 'Database instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @database_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database_instances/1
  # DELETE /database_instances/1.json
  def destroy
    notice = 'Database instance was successfully destroyed'
    begin
      @database_instance.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @database_instance.errors.add(:base, e)
      notice = "Database instance could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to database_instances_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database_instance
      @database_instance = DatabaseInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def database_instance_params
      params.require(:database_instance).permit(:type, :instance_name )
    end

    def set_select_options
      @database_types = database_types
    end
end
