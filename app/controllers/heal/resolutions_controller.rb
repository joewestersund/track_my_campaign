class Heal::ResolutionsController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_resolution, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:index, :new, :edit]

  # GET /resolutions
  # GET /resolutions.json
  def index
    conditions_string, parameters_hash, join_tables = get_conditions
    conditions = [conditions_string, parameters_hash]

    if join_tables.nil?
      @resolutions = current_db.resolutions.where(conditions)
    else
      @resolutions = current_db.resolutions.joins(join_tables).where(conditions)
    end

    @resolutions = @resolutions.order(date: :desc).page(params[:page]).per_page(page_size)
  end

  # GET /resolutions/1
  # GET /resolutions/1.json
  def show
  end

  # GET /resolutions/new
  def new
    @resolution = Heal::Resolution.new
    @resolution.date = Date.today
  end

  # GET /resolutions/1/edit
  def edit
  end

  # POST /resolutions
  # POST /resolutions.json
  def create
    @resolution = Heal::Resolution.new(resolution_params)
    @resolution.database_instance = current_db

    respond_to do |format|
      if @resolution.save
        format.html { redirect_to heal_resolutions_path, notice: 'Resolution was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resolution }
      else
        set_select_options
        format.html { render action: 'new' }
        format.json { render json: @resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resolutions/1
  # PATCH/PUT /resolutions/1.json
  def update
    respond_to do |format|
      if @resolution.update(resolution_params)
        format.html { redirect_to heal_resolutions_path, notice: 'Resolution was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resolutions/1
  # DELETE /resolutions/1.json
  def destroy
    notice = 'Resolution was successfully destroyed'
    begin
      @resolution.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @resolution.errors.add(:base, e)
      notice = "Resolution could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_resolutions_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolution
      @resolution = current_db.resolutions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resolution_params
      params.require(:heal_resolution).permit(:date, :city_id, :prior_to_joining_campaign, :notes, {policy_ids: []})
    end

    def set_select_options
      @cities = current_db.cities.order(:name)
      @policies = current_db.policies.order(:order_in_list)
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:date,">=",:min_date,params)
      sf.add_condition(:date,"<=",:max_date,params)
      sf.add_condition(:city_id,"=",:city_id, params)
      sf.add_condition(:policy_id,"=",:policy_id,params,{join_table: :policies, join_object_name: :policies_resolutions})
      sf.add_condition(:prior_to_joining_campaign,"=",:prior_to_joining_campaign,params)
      sf.add_condition(:notes,"ILIKE",:notes,params)

      sf.get_search_filter
    end
end
