class Heal::MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]

  # GET /milestones
  # GET /milestones.json
  def index
    @milestones = current_db.milestones.order(:order_in_list)
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
        format.html { redirect_to @milestone, notice: 'Milestone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @milestone }
      else
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
        format.html { redirect_to @milestone, notice: 'Milestone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestones/1
  # DELETE /milestones/1.json
  def destroy
    @milestone.destroy
    respond_to do |format|
      format.html { redirect_to milestones_url }
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
      params.require(:heal_milestone).permit(:name, :order_in_list)
    end
end
