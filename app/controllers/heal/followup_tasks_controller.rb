class Heal::FollowupTasksController < ApplicationController
  before_action :check_current_db_exists
  before_action :check_has_write_permissions, except: [:index, :show]
  before_action :set_followup_task, only: [:show, :edit, :update, :destroy]
  before_action :set_select_options, only: [:index, :new, :edit]

  # GET /followup_tasks
  # GET /followup_tasks.json
  def index
    @followup_tasks = current_db.followup_tasks.where(get_conditions).order(due_date: :desc).page(params[:page]).per_page(page_size)
  end

  # GET /followup_tasks/1
  # GET /followup_tasks/1.json
  def show
  end

  # GET /followup_tasks/new
  def new
    @followup_task = Heal::FollowupTask.new
    @followup_task.assigned_by = current_user
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
        send_email_notification(@followup_task, false)
        format.html { redirect_to @followup_task, notice: 'Followup task was successfully created.' }
        format.json { render action: 'show', status: :created, location: @followup_task }
      else
        set_select_options
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
        send_email_notification(@followup_task, true)
        format.html { redirect_to @followup_task, notice: 'Followup task was successfully updated.' }
        format.json { head :no_content }
      else
        set_select_options
        format.html { render action: 'edit' }
        format.json { render json: @followup_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followup_tasks/1
  # DELETE /followup_tasks/1.json
  def destroy
    notice = 'Followup task was successfully destroyed'
    begin
      @followup_task.destroy
    rescue ActiveRecord::DeleteRestrictionError => e
      @followup_task.errors.add(:base, e)
      notice = "Followup task could not be destroyed. #{e.message}"
    end
    respond_to do |format|
      format.html { redirect_to heal_followup_tasks_url, notice: notice }
      format.json { head :no_content }
    end
  end

  private
    def send_email_notification(followup_task, update)
      if params[:send_notification] == Heal::FollowupTask::SEND_FOLLOWUP_TO_ASSIGNEE_ONLY[:value]
        Heal::NotificationMailer.followup_task_email(followup_task,update,false).deliver
      elsif params[:send_notification] == Heal::FollowupTask::SEND_FOLLOWUP_TO_ASSIGNEE_CC_ASSIGNER[:value]
        Heal::NotificationMailer.followup_task_email(followup_task,update,true).deliver
      end

    end

    # Use callbacks to share common setup or constraints between actions.
    def set_followup_task
      @followup_task = Heal::FollowupTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def followup_task_params
      params.require(:heal_followup_task).permit( :due_date, :description, :assigned_to_id, :assigned_by_id, :prior_communication_id, :completed, :completed_date, :completed_by_id, :completion_notes)
    end

    def set_select_options
      @users = current_db.users.order(:first_name, :last_name)
      @communications = current_db.communications.order(:date => :desc)
    end

    def get_conditions
      sf = SearchFilter.new

      sf.add_condition(:due_date,">=",:min_due_date,params)
      sf.add_condition(:due_date,"<=",:max_due_date,params)
      sf.add_condition(:description,"ILIKE",:description,params)
      sf.add_condition(:assigned_to_id,"=",:assigned_to_id,params)
      sf.add_condition(:assigned_by_id,"=",:assigned_by_id,params)
      sf.add_condition(:completed,"=",:completed,params)
      sf.add_condition(:completed_date,">=",:min_completed_date,params)
      sf.add_condition(:completed_date,"<=",:max_completed_date,params)
      sf.add_condition(:completed_by_id,"=",:completed_by_id,params)
      sf.add_condition(:completion_notes,"ILIKE",:completion_notes,params)

      sf.get_search_filter
    end

end
