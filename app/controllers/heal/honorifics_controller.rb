class Heal::HonorificsController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_honorific, only: [:show, :edit, :update, :destroy]

  # GET /honorifics
  # GET /honorifics.json
  def index
    @honorifics = current_db.honorifics.order(:order_in_list)
  end

  # GET /honorifics/1
  # GET /honorifics/1.json
  def show
  end

  # GET /honorifics/new
  def new
    @honorific = Heal::Honorific.new
  end

  # GET /honorifics/1/edit
  def edit
  end

  # POST /honorifics
  # POST /honorifics.json
  def create
    @honorific = Heal::Honorific.new(honorific_params)
    @honorific.database_instance = current_db

    respond_to do |format|
      if @honorific.save
        format.html { redirect_to heal_honorifics_url, notice: 'Honorific was successfully created.' }
        format.json { render action: 'show', status: :created, location: @honorific }
      else
        format.html { render action: 'new' }
        format.json { render json: @honorific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /honorifics/1
  # PATCH/PUT /honorifics/1.json
  def update
    respond_to do |format|
      if @honorific.update(honorific_params)
        format.html { redirect_to heal_honorifics_url, notice: 'Honorific was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @honorific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /honorifics/1
  # DELETE /honorifics/1.json
  def destroy
    notice = 'Honorific was successfully destroyed'
    begin
      @honorific.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @honorific.errors.add(:base, e)
      notice = "Honorific could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_honorifics_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_honorific
      @honorific = current_db.honorifics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def honorific_params
      params.require(:heal_honorific).permit(:name, :order_in_list)
    end
end
