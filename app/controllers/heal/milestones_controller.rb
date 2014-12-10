class Heal::MilestonesController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:index, :new, :edit]

  # GET /milestones
  # GET /milestones.json
  def index
    @milestones = current_db.milestones.where(get_conditions).order(completion_date: :desc).page(params[:page]).per_page(page_size)
  end

  # GET /milestones/1
  # GET /milestones/1.json
  def show
  end

  # GET /milestones/new
  def new
    @milestone = Heal::Milestone.new
  end

  # GET /milestones/1/edit
  def edit
  end

  # POST /milestones
  # POST /milestones.json
  def create
    @milestone = Heal::Milestone.new(milestone_params)
    @milestone.database_instance = current_db

    respond_to do |format|
      if @milestone.save
        format.html { redirect_to heal_milestones_path, notice: 'Milestone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @milestone }
      else
        set_select_options
        format.html { render action: 'new' }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestones/1
  # PATCH/PUT /milestones/1.json
  def update
    respond_to do |format|
      if @milestone.update(milestone_params)
        format.html { redirect_to heal_milestones_path, notice: 'Milestone was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.json
  def destroy
    notice = 'Milestone was successfully destroyed'
    begin
      @milestone.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @milestone.errors.add(:base, e)
      notice = "Milestone could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_milestones_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = current_db.milestones.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_params
      params.require(:heal_milestone).permit(:milestone_type_id, :city_id, :status_type_id, :completion_date, :notes, :assigned_to_id)
    end

    def set_select_options
      @milestone_types = current_db.milestone_types.order(:order_in_list)
      @cities = current_db.cities.order(:name)
      @status_types = current_db.status_types.order(:order_in_list)
      @users = current_db.users.order(:first_name, :last_name)
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:milestone_type_id,"=",:milestone_type_id, params)
      sf.add_condition(:city_id,"=",:city_id, params)
      sf.add_condition(:status_type_id,"=",:status_type_id, params)
      sf.add_condition(:assigned_to_id,"=",:assigned_to_id,params)
      sf.add_condition(:completion_date,">=",:min_completed_date,params)
      sf.add_condition(:completion_date,"<=",:max_completed_date,params)
      sf.add_condition(:notes,"ILIKE",:notes,params)

      sf.get_search_filter
    end

end
