class Heal::ResolutionsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_resolution, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:new, :edit]

  # GET /resolutions
  # GET /resolutions.json
  def index
    @resolutions = current_db.resolutions.order(date: :desc)
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
        format.html { redirect_to @resolution, notice: 'Resolution was successfully created.' }
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
        format.html { redirect_to @resolution, notice: 'Resolution was successfully updated.' }
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
end
