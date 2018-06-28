class AttachmentsEncryptionDisableEmailsController < ApplicationController
  before_action :set_attachments_encryption_disable_email, only: [:show, :edit, :update, :destroy]

  # GET /attachments_encryption_disable_emails
  # GET /attachments_encryption_disable_emails.json
  def index
    @attachments_encryption_disable_emails = Setting.current.attachments_encryption_disable_emails
  end

  # GET /attachments_encryption_disable_emails/1
  # GET /attachments_encryption_disable_emails/1.json
  def show
  end

  # GET /attachments_encryption_disable_emails/new
  def new
    @attachments_encryption_disable_email = Setting.current.attachments_encryption_disable_emails.build
  end

  # GET /attachments_encryption_disable_emails/1/edit
  def edit
  end

  # POST /attachments_encryption_disable_emails
  # POST /attachments_encryption_disable_emails.json
  def create
    @attachments_encryption_disable_email = Setting.current.attachments_encryption_disable_emails.build(attachments_encryption_disable_email_params)

    respond_to do |format|
      if @attachments_encryption_disable_email.save
        format.html { redirect_to @attachments_encryption_disable_email, notice: 'Attachments encryption disable email was successfully created.' }
        format.json { render :show, status: :created, location: @attachments_encryption_disable_email }
      else
        format.html { render :new }
        format.json { render json: @attachments_encryption_disable_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attachments_encryption_disable_emails/1
  # PATCH/PUT /attachments_encryption_disable_emails/1.json
  def update
    respond_to do |format|
      if @attachments_encryption_disable_email.update(attachments_encryption_disable_email_params)
        format.html { redirect_to @attachments_encryption_disable_email, notice: 'Attachments encryption disable email was successfully updated.' }
        format.json { render :show, status: :ok, location: @attachments_encryption_disable_email }
      else
        format.html { render :edit }
        format.json { render json: @attachments_encryption_disable_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments_encryption_disable_emails/1
  # DELETE /attachments_encryption_disable_emails/1.json
  def destroy
    @attachments_encryption_disable_email.destroy
    respond_to do |format|
      format.html { redirect_to attachments_encryption_disable_emails_url, notice: 'Attachments encryption disable email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachments_encryption_disable_email
      @attachments_encryption_disable_email = AttachmentsEncryptionDisableEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachments_encryption_disable_email_params
      params.require(:attachments_encryption_disable_email).permit(:email)
    end
end
