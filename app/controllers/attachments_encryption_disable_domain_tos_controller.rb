class AttachmentsEncryptionDisableDomainTosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attachments_encryption_disable_domain_to, only: [:show, :edit, :update, :destroy]

  # GET /attachments_encryption_disable_domain_tos
  # GET /attachments_encryption_disable_domain_tos.json
  def index
    @attachments_encryption_disable_domain_tos = Setting.current.attachments_encryption_disable_domain_tos
  end

  # GET /attachments_encryption_disable_domain_tos/new
  def new
    @attachments_encryption_disable_domain_to = Setting.current.attachments_encryption_disable_domain_tos.build
  end

  # GET /attachments_encryption_disable_domain_tos/1/edit
  def edit
  end

  # POST /attachments_encryption_disable_domain_tos
  # POST /attachments_encryption_disable_domain_tos.json
  def create
    @attachments_encryption_disable_domain_to = Setting.current.attachments_encryption_disable_domain_tos.build(attachments_encryption_disable_domain_to_params)

    respond_to do |format|
      if @attachments_encryption_disable_domain_to.save
        format.html { redirect_to attachments_encryption_disable_domain_tos_url, notice: 'Attachments encryption disable domain to was successfully created.' }
        format.json { render :show, status: :created, location: @attachments_encryption_disable_domain_to }
      else
        format.html { render :new }
        format.json { render json: @attachments_encryption_disable_domain_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attachments_encryption_disable_domain_tos/1
  # PATCH/PUT /attachments_encryption_disable_domain_tos/1.json
  def update
    respond_to do |format|
      if @attachments_encryption_disable_domain_to.update(attachments_encryption_disable_domain_to_params)
        format.html { redirect_to attachments_encryption_disable_domain_tos_url, notice: 'Attachments encryption disable domain to was successfully updated.' }
        format.json { render :show, status: :ok, location: @attachments_encryption_disable_domain_to }
      else
        format.html { render :edit }
        format.json { render json: @attachments_encryption_disable_domain_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments_encryption_disable_domain_tos/1
  # DELETE /attachments_encryption_disable_domain_tos/1.json
  def destroy
    @attachments_encryption_disable_domain_to.destroy
    respond_to do |format|
      format.html { redirect_to attachments_encryption_disable_domain_tos_url, notice: 'Attachments encryption disable domain to was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachments_encryption_disable_domain_to
      @attachments_encryption_disable_domain_to = AttachmentsEncryptionDisableDomainTo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachments_encryption_disable_domain_to_params
      params.require(:attachments_encryption_disable_domain_to).permit(:domain)
    end
end
