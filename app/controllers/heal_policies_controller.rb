class HealPoliciesController < ApplicationController
  before_action :set_heal_policy, only: [:show, :edit, :update, :destroy]

  # GET /heal_policies
  # GET /heal_policies.json
  def index
    @heal_policies = HealPolicy.all
  end

  # GET /heal_policies/1
  # GET /heal_policies/1.json
  def show
  end

  # GET /heal_policies/new
  def new
    @heal_policy = HealPolicy.new
  end

  # GET /heal_policies/1/edit
  def edit
  end

  # POST /heal_policies
  # POST /heal_policies.json
  def create
    @heal_policy = HealPolicy.new(heal_policy_params)

    respond_to do |format|
      if @heal_policy.save
        format.html { redirect_to @heal_policy, notice: 'Heal policy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @heal_policy }
      else
        format.html { render action: 'new' }
        format.json { render json: @heal_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heal_policies/1
  # PATCH/PUT /heal_policies/1.json
  def update
    respond_to do |format|
      if @heal_policy.update(heal_policy_params)
        format.html { redirect_to @heal_policy, notice: 'Heal policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @heal_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heal_policies/1
  # DELETE /heal_policies/1.json
  def destroy
    @heal_policy.destroy
    respond_to do |format|
      format.html { redirect_to heal_policies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heal_policy
      @heal_policy = HealPolicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heal_policy_params
      params.require(:heal_policy).permit(:database_instance_id, :name, :order_in_list)
    end
end
