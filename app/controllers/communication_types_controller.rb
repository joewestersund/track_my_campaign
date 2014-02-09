class CommunicationTypesController < ApplicationController
  before_action :set_communication_type, only: [:show, :edit, :update, :destroy]

  # GET /communication_types
  # GET /communication_types.json
  def index
    @communication_types = CommunicationType.all
  end

  # GET /communication_types/1
  # GET /communication_types/1.json
  def show
  end

  # GET /communication_types/new
  def new
    @communication_type = CommunicationType.new
  end

  # GET /communication_types/1/edit
  def edit
  end

  # POST /communication_types
  # POST /communication_types.json
  def create
    @communication_type = CommunicationType.new(communication_type_params)

    respond_to do |format|
      if @communication_type.save
        format.html { redirect_to @communication_type, notice: 'Communication type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @communication_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @communication_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communication_types/1
  # PATCH/PUT /communication_types/1.json
  def update
    respond_to do |format|
      if @communication_type.update(communication_type_params)
        format.html { redirect_to @communication_type, notice: 'Communication type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @communication_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communication_types/1
  # DELETE /communication_types/1.json
  def destroy
    @communication_type.destroy
    respond_to do |format|
      format.html { redirect_to communication_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communication_type
      @communication_type = CommunicationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def communication_type_params
      params.require(:communication_type).permit(:database_instance_id, :name, :order_in_list)
    end
end
