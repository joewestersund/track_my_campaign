class MilestoneReachedsController < ApplicationController
  before_action :set_milestone_reached, only: [:show, :edit, :update, :destroy]

  # GET /milestone_reacheds
  # GET /milestone_reacheds.json
  def index
    @milestone_reacheds = MilestoneReached.all
  end

  # GET /milestone_reacheds/1
  # GET /milestone_reacheds/1.json
  def show
  end

  # GET /milestone_reacheds/new
  def new
    @milestone_reached = MilestoneReached.new
  end

  # GET /milestone_reacheds/1/edit
  def edit
  end

  # POST /milestone_reacheds
  # POST /milestone_reacheds.json
  def create
    @milestone_reached = MilestoneReached.new(milestone_reached_params)

    respond_to do |format|
      if @milestone_reached.save
        format.html { redirect_to @milestone_reached, notice: 'Milestone reached was successfully created.' }
        format.json { render action: 'show', status: :created, location: @milestone_reached }
      else
        format.html { render action: 'new' }
        format.json { render json: @milestone_reached.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestone_reacheds/1
  # PATCH/PUT /milestone_reacheds/1.json
  def update
    respond_to do |format|
      if @milestone_reached.update(milestone_reached_params)
        format.html { redirect_to @milestone_reached, notice: 'Milestone reached was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @milestone_reached.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestone_reacheds/1
  # DELETE /milestone_reacheds/1.json
  def destroy
    @milestone_reached.destroy
    respond_to do |format|
      format.html { redirect_to milestone_reacheds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone_reached
      @milestone_reached = MilestoneReached.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_reached_params
      params.require(:milestone_reached).permit(:database_instance_id, :milestone_id, :city_id, :status_type_id, :completion_date, :notes, :user_id)
    end
end
