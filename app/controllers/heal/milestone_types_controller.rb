class Heal::MilestoneTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_milestone_type, only: [:show, :edit, :update, :destroy]

  # GET /milestone_types
  # GET /milestone_types.json
  def index
    @milestone_types = current_db.milestone_types.order(:order_in_list).page(params[:page]).per_page(page_size)
  end

  # GET /milestone_types/1
  # GET /milestone_types/1.json
  def show
  end

  # GET /milestone_types/new
  def new
    @milestone_type = Heal::MilestoneType.new
  end

  # GET /milestone_types/1/edit
  def edit
  end

  # POST /milestone_types
  # POST /milestone_types.json
  def create
    @milestone_type = Heal::MilestoneType.new(milestone_type_params)
    @milestone_type.database_instance = current_db

    respond_to do |format|
      if @milestone_type.save
        format.html { redirect_to heal_milestone_types_url, notice: 'Milestone type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @milestone_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @milestone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /milestone_types/1
  # PATCH/PUT /milestone_types/1.json
  def update
    respond_to do |format|
      if @milestone_type.update(milestone_type_params)
        format.html { redirect_to heal_milestone_types_url, notice: 'Milestone type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @milestone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /milestone_types/1
  # DELETE /milestone_types/1.json
  def destroy
    notice = 'Milestone type was successfully destroyed'
    begin
      @milestone_type.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @milestone_type.errors.add(:base, e)
      notice = "Milestone type could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_milestone_types_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone_type
      @milestone_type = current_db.milestone_types.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def milestone_type_params
      params.require(:heal_milestone_type).permit(:name, :order_in_list)
    end
end
