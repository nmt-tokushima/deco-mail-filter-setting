class AttachmentsEncryptionDisableDomainFromsController < ApplicationController
  before_action :set_attachments_encryption_disable_domain_from, only: [:show, :edit, :update, :destroy]

  # GET /attachments_encryption_disable_domain_froms
  # GET /attachments_encryption_disable_domain_froms.json
  def index
    @attachments_encryption_disable_domain_froms = AttachmentsEncryptionDisableDomainFrom.all
  end

  # GET /attachments_encryption_disable_domain_froms/1
  # GET /attachments_encryption_disable_domain_froms/1.json
  def show
  end

  # GET /attachments_encryption_disable_domain_froms/new
  def new
    @attachments_encryption_disable_domain_from = AttachmentsEncryptionDisableDomainFrom.new
  end

  # GET /attachments_encryption_disable_domain_froms/1/edit
  def edit
  end

  # POST /attachments_encryption_disable_domain_froms
  # POST /attachments_encryption_disable_domain_froms.json
  def create
    @attachments_encryption_disable_domain_from = AttachmentsEncryptionDisableDomainFrom.new(attachments_encryption_disable_domain_from_params)

    respond_to do |format|
      if @attachments_encryption_disable_domain_from.save
        format.html { redirect_to @attachments_encryption_disable_domain_from, notice: 'Attachments encryption disable domain from was successfully created.' }
        format.json { render :show, status: :created, location: @attachments_encryption_disable_domain_from }
      else
        format.html { render :new }
        format.json { render json: @attachments_encryption_disable_domain_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attachments_encryption_disable_domain_froms/1
  # PATCH/PUT /attachments_encryption_disable_domain_froms/1.json
  def update
    respond_to do |format|
      if @attachments_encryption_disable_domain_from.update(attachments_encryption_disable_domain_from_params)
        format.html { redirect_to @attachments_encryption_disable_domain_from, notice: 'Attachments encryption disable domain from was successfully updated.' }
        format.json { render :show, status: :ok, location: @attachments_encryption_disable_domain_from }
      else
        format.html { render :edit }
        format.json { render json: @attachments_encryption_disable_domain_from.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments_encryption_disable_domain_froms/1
  # DELETE /attachments_encryption_disable_domain_froms/1.json
  def destroy
    @attachments_encryption_disable_domain_from.destroy
    respond_to do |format|
      format.html { redirect_to attachments_encryption_disable_domain_froms_url, notice: 'Attachments encryption disable domain from was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachments_encryption_disable_domain_from
      @attachments_encryption_disable_domain_from = AttachmentsEncryptionDisableDomainFrom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachments_encryption_disable_domain_from_params
      params.require(:attachments_encryption_disable_domain_from).permit(:setting_id, :domain)
    end
end
