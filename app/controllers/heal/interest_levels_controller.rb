class Heal::InterestLevelsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_interest_level, only: [:show, :edit, :update, :destroy]

  # GET /interest_levels
  # GET /interest_levels.json
  def index
    @interest_levels = current_db.interest_levels.order(:order_in_list).page(params[:page]).per_page(page_size)
  end

  # GET /interest_levels/1
  # GET /interest_levels/1.json
  def show
  end

  # GET /interest_levels/new
  def new
    @interest_level = Heal::InterestLevel.new
  end

  # GET /interest_levels/1/edit
  def edit
  end

  # POST /interest_levels
  # POST /interest_levels.json
  def create
    @interest_level = Heal::InterestLevel.new(interest_level_params)
    @interest_level.database_instance = current_db

    respond_to do |format|
      if @interest_level.save
        format.html { redirect_to heal_interest_levels_url, notice: 'Interest level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interest_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @interest_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_levels/1
  # PATCH/PUT /interest_levels/1.json
  def update
    respond_to do |format|
      if @interest_level.update(interest_level_params)
        format.html { redirect_to heal_interest_levels_url, notice: 'Interest level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interest_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_levels/1
  # DELETE /interest_levels/1.json
  def destroy
    notice = 'Interest level was successfully destroyed'
    begin
      @interest_level.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @interest_level.errors.add(:base, e)
      notice = "Interest level could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_interest_levels_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_level
      @interest_level = current_db.interest_levels.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_level_params
      params.require(:heal_interest_level).permit(:name, :order_in_list)
    end
end
