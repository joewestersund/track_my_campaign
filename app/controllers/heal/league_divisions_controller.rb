class Heal::LeagueDivisionsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_league_division, only: [:show, :edit, :update, :destroy]

  # GET /league_divisions
  # GET /league_divisions.json
  def index
    @league_divisions = current_db.league_divisions.order(:order_in_list).page(params[:page]).per_page(page_size)
  end

  # GET /league_divisions/1
  # GET /league_divisions/1.json
  def show
  end

  # GET /league_divisions/new
  def new
    @league_division = Heal::LeagueDivision.new
  end

  # GET /league_divisions/1/edit
  def edit
  end

  # POST /league_divisions
  # POST /league_divisions.json
  def create
    @league_division = Heal::LeagueDivision.new(league_division_params)
    @league_division.database_instance = current_db

    respond_to do |format|
      if @league_division.save
        format.html { redirect_to heal_league_divisions_url, notice: 'League division was successfully created.' }
        format.json { render action: 'show', status: :created, location: @league_division }
      else
        format.html { render action: 'new' }
        format.json { render json: @league_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_divisions/1
  # PATCH/PUT /league_divisions/1.json
  def update
    respond_to do |format|
      if @league_division.update(league_division_params)
        format.html { redirect_to heal_league_divisions_url, notice: 'League division was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @league_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_divisions/1
  # DELETE /league_divisions/1.json
  def destroy
    notice = 'League division was successfully destroyed'
    begin
      @league_division.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @league_division.errors.add(:base, e)
      notice = "League division could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_league_divisions_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_division
      @league_division = current_db.league_divisions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_division_params
      params.require(:heal_league_division).permit(:name, :order_in_list)
    end
end
