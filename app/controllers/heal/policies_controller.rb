class Heal::PoliciesController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_policy, only: [:show, :edit, :update, :destroy]

  # GET /policies
  # GET /policies.json
  def index
    @policies = current_db.policies.order(:order_in_list)
  end

  # GET /policies/1
  # GET /policies/1.json
  def show
  end

  # GET /policies/new
  def new
    @policy = Heal::Policy.new
  end

  # GET /policies/1/edit
  def edit
  end

  # POST /policies
  # POST /policies.json
  def create
    @policy = Heal::Policy.new(policy_params)
    @policy.database_instance = current_db

    respond_to do |format|
      if @policy.save
        format.html { redirect_to heal_policies_url, notice: 'Policy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @policy }
      else
        format.html { render action: 'new' }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policies/1
  # PATCH/PUT /policies/1.json
  def update
    respond_to do |format|
      if @policy.update(policy_params)
        format.html { redirect_to heal_policies_url, notice: 'Policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policies/1
  # DELETE /policies/1.json
  def destroy
    notice = 'Policy was successfully destroyed'
    begin
      @policy.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @policy.errors.add(:base, e)
      notice = "Policy could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_policies_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = current_db.policies.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_params
      params.require(:heal_policy).permit(:name, :order_in_list)
    end
end
