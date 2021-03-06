class Heal::StatusTypesController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_status_type, only: [:show, :edit, :update, :destroy]

  # GET /status_types
  # GET /status_types.json
  def index
    @status_types = current_db.status_types.order(:order_in_list).page(params[:page]).per_page(page_size)
  end

  # GET /status_types/1
  # GET /status_types/1.json
  def show
  end

  # GET /status_types/new
  def new
    @status_type = Heal::StatusType.new
  end

  # GET /status_types/1/edit
  def edit
  end

  # POST /status_types
  # POST /status_types.json
  def create
    @status_type = Heal::StatusType.new(status_type_params)
    @status_type.database_instance = current_db

    respond_to do |format|
      if @status_type.save
        format.html { redirect_to heal_status_types_url, notice: 'Status type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @status_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @status_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_types/1
  # PATCH/PUT /status_types/1.json
  def update
    respond_to do |format|
      if @status_type.update(status_type_params)
        format.html { redirect_to heal_status_types_url, notice: 'Status type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @status_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_types/1
  # DELETE /status_types/1.json
  def destroy
    notice = 'Status type was successfully destroyed'
    begin
      @status_type.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @status_type.errors.add(:base, e)
      notice = "Status type could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_status_types_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_type
      @status_type = current_db.status_types.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_type_params
      params.require(:heal_status_type).permit(:name, :order_in_list)
    end
end
