class ContactInterestLevelsController < ApplicationController
  before_action :set_contact_interest_level, only: [:show, :edit, :update, :destroy]

  # GET /contact_interest_levels
  # GET /contact_interest_levels.json
  def index
    @contact_interest_levels = ContactInterestLevel.all
  end

  # GET /contact_interest_levels/1
  # GET /contact_interest_levels/1.json
  def show
  end

  # GET /contact_interest_levels/new
  def new
    @contact_interest_level = ContactInterestLevel.new
  end

  # GET /contact_interest_levels/1/edit
  def edit
  end

  # POST /contact_interest_levels
  # POST /contact_interest_levels.json
  def create
    @contact_interest_level = ContactInterestLevel.new(contact_interest_level_params)

    respond_to do |format|
      if @contact_interest_level.save
        format.html { redirect_to @contact_interest_level, notice: 'Contact interest level was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact_interest_level }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact_interest_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_interest_levels/1
  # PATCH/PUT /contact_interest_levels/1.json
  def update
    respond_to do |format|
      if @contact_interest_level.update(contact_interest_level_params)
        format.html { redirect_to @contact_interest_level, notice: 'Contact interest level was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact_interest_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_interest_levels/1
  # DELETE /contact_interest_levels/1.json
  def destroy
    @contact_interest_level.destroy
    respond_to do |format|
      format.html { redirect_to contact_interest_levels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_interest_level
      @contact_interest_level = ContactInterestLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_interest_level_params
      params.require(:contact_interest_level).permit(:database_instance_id, :name, :order_in_list)
    end
end
