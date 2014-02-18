class Heal::FollowupTasksController < ApplicationController
  before_action :check_current_db_exists
  before_action :set_followup_task, only: [:show, :edit, :update, :destroy]

  # GET /followup_tasks
  # GET /followup_tasks.json
  def index
    @followup_tasks = current_db.followup_tasks.order(due_date: :desc)
  end

  # GET /followup_tasks/1
  # GET /followup_tasks/1.json
  def show
  end

  # GET /followup_tasks/new
  def new
    @followup_task = Heal::FollowupTask.new
  end

  # GET /followup_tasks/1/edit
  def edit
  end

  # POST /followup_tasks
  # POST /followup_tasks.json
  def create
    @followup_task = Heal::FollowupTask.new(followup_task_params)
    @followup_task.database_instance = current_db

    respond_to do |format|
      if @followup_task.save
        format.html { redirect_to @followup_task, notice: 'Followup task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @followup_task }
      else
        format.html { render action: 'new' }
        format.json { render json: @followup_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followup_tasks/1
  # PATCH/PUT /followup_tasks/1.json
  def update
    respond_to do |format|
      if @followup_task.update(followup_task_params)
        format.html { redirect_to @followup_task, notice: 'Followup task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @followup_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followup_tasks/1
  # DELETE /followup_tasks/1.json
  def destroy
    @followup_task.destroy
    respond_to do |format|
      format.html { redirect_to heal_followup_tasks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_followup_task
      @followup_task = Heal::FollowupTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def followup_task_params
      params.require(:heal_followup_task).permit( :due_date, :description, :assigned_to_id, :assigned_by_id, :prior_communication_id, :completed, :completed_date, :completed_by_id, :completion_notes)
    end
end
