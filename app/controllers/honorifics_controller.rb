class HonorificsController < ApplicationController
  before_action :set_honorific, only: [:show, :edit, :update, :destroy]

  # GET /honorifics
  # GET /honorifics.json
  def index
    @honorifics = Honorific.all
  end

  # GET /honorifics/1
  # GET /honorifics/1.json
  def show
  end

  # GET /honorifics/new
  def new
    @honorific = Honorific.new
  end

  # GET /honorifics/1/edit
  def edit
  end

  # POST /honorifics
  # POST /honorifics.json
  def create
    @honorific = Honorific.new(honorific_params)

    respond_to do |format|
      if @honorific.save
        format.html { redirect_to @honorific, notice: 'Honorific was successfully created.' }
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
        format.html { redirect_to @honorific, notice: 'Honorific was successfully updated.' }
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
    @honorific.destroy
    respond_to do |format|
      format.html { redirect_to honorifics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_honorific
      @honorific = Honorific.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def honorific_params
      params.require(:honorific).permit(:database_instance_id, :name, :order_in_list)
    end
end
