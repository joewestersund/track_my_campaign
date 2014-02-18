class Heal::PositionTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_position_type, only: [:show, :edit, :update, :destroy]

  # GET /position_types
  # GET /position_types.json
  def index
    @position_types = current_db.position_types.order(:order_in_list)
  end

  # GET /position_types/1
  # GET /position_types/1.json
  def show
  end

  # GET /position_types/new
  def new
    @position_type = Heal::PositionType.new
  end

  # GET /position_types/1/edit
  def edit
  end

  # POST /position_types
  # POST /position_types.json
  def create
    @position_type = Heal::PositionType.new(position_type_params)
    @position_type.database_instance = current_db

    respond_to do |format|
      if @position_type.save
        format.html { redirect_to heal_position_types_url, notice: 'Position type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @position_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @position_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_types/1
  # PATCH/PUT /position_types/1.json
  def update
    respond_to do |format|
      if @position_type.update(position_type_params)
        format.html { redirect_to heal_position_types_url, notice: 'Position type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @position_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_types/1
  # DELETE /position_types/1.json
  def destroy
    @position_type.destroy
    respond_to do |format|
      format.html { redirect_to heal_position_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_type
      @position_type = current_db.position_types.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_type_params
      params.require(:heal_position_type).permit(:name, :order_in_list)
    end
end
