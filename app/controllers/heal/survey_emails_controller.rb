class Heal::SurveyEmailsController < ApplicationController
  before_action :set_survey_email, only: [:show, :edit, :update, :destroy]

  # GET /survey_emails
  # GET /survey_emails.json
  def index
    @survey_emails = SurveyEmail.all
  end

  # GET /survey_emails/1
  # GET /survey_emails/1.json
  def show
  end

  # GET /survey_emails/new
  def new
    @survey_email = SurveyEmail.new
  end

  # GET /survey_emails/1/edit
  def edit
  end

  # POST /survey_emails
  # POST /survey_emails.json
  def create
    @survey_email = SurveyEmail.new(survey_email_params)

    respond_to do |format|
      if @survey_email.save
        format.html { redirect_to @survey_email, notice: 'Survey email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @survey_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @survey_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_emails/1
  # PATCH/PUT /survey_emails/1.json
  def update
    respond_to do |format|
      if @survey_email.update(survey_email_params)
        format.html { redirect_to @survey_email, notice: 'Survey email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @survey_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_emails/1
  # DELETE /survey_emails/1.json
  def destroy
    @survey_email.destroy
    respond_to do |format|
      format.html { redirect_to survey_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_email
      @survey_email = SurveyEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_email_params
      params.require(:survey_email).permit(:database_instance_id, :contact_id, :email_address, :sent_date, :subject, :message, :survey_monkey_respondent_id, :response_received, :reminder_sent_date)
    end
end
