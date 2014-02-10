class InterestLevelsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_interest_level, only: [:show, :edit, :update, :destroy]

  # GET /interest_levels
  # GET /interest_levels.json
  def index
    @interest_levels = InterestLevel.all
  end

  # GET /interest_levels/1
  # GET /interest_levels/1.json
  def show
  end

  # GET /interest_levels/new
  def new
    @interest_level = InterestLevel.new
  end

  # GET /interest_levels/1/edit
  def edit
  end

  # POST /interest_levels
  # POST /interest_levels.json
  def create
    @interest_level = InterestLevel.new(interest_level_params)

    respond_to do |format|
      if @interest_level.save
        format.html { redirect_to @interest_level, notice: 'Interest level was successfully created.' }
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
        format.html { redirect_to @interest_level, notice: 'Interest level was successfully updated.' }
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
    @interest_level.destroy
    respond_to do |format|
      format.html { redirect_to interest_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_level
      @interest_level = InterestLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_level_params
      params.require(:interest_level).permit(:database_instance_id, :name, :order_in_list)
    end
end
