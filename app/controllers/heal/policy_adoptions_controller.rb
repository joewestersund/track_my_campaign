class Heal::PolicyAdoptionsController < ApplicationController
  before_action :set_policy_adoption, only: [:show, :edit, :update, :destroy]

  # GET /policy_adoptions
  # GET /policy_adoptions.json
  def index
    @policy_adoptions = current_db.policy_adoptions.all
  end

  # GET /policy_adoptions/1
  # GET /policy_adoptions/1.json
  def show
  end

  # GET /policy_adoptions/new
  def new
    @policy_adoption = Heal::PolicyAdoption.new
  end

  # GET /policy_adoptions/1/edit
  def edit
  end

  # POST /policy_adoptions
  # POST /policy_adoptions.json
  def create
    @policy_adoption = Heal::PolicyAdoption.new(policy_adoption_params)
    @policy_adoption.database_instance = current_db

    respond_to do |format|
      if @policy_adoption.save
        format.html { redirect_to @policy_adoption, notice: 'Policy adoption was successfully created.' }
        format.json { render action: 'show', status: :created, location: @policy_adoption }
      else
        format.html { render action: 'new' }
        format.json { render json: @policy_adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_adoptions/1
  # PATCH/PUT /policy_adoptions/1.json
  def update
    respond_to do |format|
      if @policy_adoption.update(policy_adoption_params)
        format.html { redirect_to @policy_adoption, notice: 'Policy adoption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @policy_adoption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_adoptions/1
  # DELETE /policy_adoptions/1.json
  def destroy
    @policy_adoption.destroy
    respond_to do |format|
      format.html { redirect_to policy_adoptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_adoption
      @policy_adoption = current_db.policy_adoptions.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_adoption_params
      params.require(:policy_adoption).permit(:date, :city_id, :prior_to_joining_campaign, :notes)
    end
end
