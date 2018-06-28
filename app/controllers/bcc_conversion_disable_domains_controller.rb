class BccConversionDisableDomainsController < ApplicationController
  before_action :set_bcc_conversion_disable_domain, only: [:show, :edit, :update, :destroy]

  # GET /bcc_conversion_disable_domains
  # GET /bcc_conversion_disable_domains.json
  def index
    @bcc_conversion_disable_domains = Setting.current.bcc_conversion_disable_domains
  end

  # GET /bcc_conversion_disable_domains/1
  # GET /bcc_conversion_disable_domains/1.json
  def show
  end

  # GET /bcc_conversion_disable_domains/new
  def new
    @bcc_conversion_disable_domain = Setting.current.bcc_conversion_disable_domains.build
  end

  # GET /bcc_conversion_disable_domains/1/edit
  def edit
  end

  # POST /bcc_conversion_disable_domains
  # POST /bcc_conversion_disable_domains.json
  def create
    @bcc_conversion_disable_domain = Setting.current.bcc_conversion_disable_domains.build(bcc_conversion_disable_domain_params)

    respond_to do |format|
      if @bcc_conversion_disable_domain.save
        format.html { redirect_to bcc_conversion_disable_domains_url, notice: 'Bcc conversion disable domain was successfully created.' }
        format.json { render :show, status: :created, location: @bcc_conversion_disable_domain }
      else
        format.html { render :new }
        format.json { render json: @bcc_conversion_disable_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bcc_conversion_disable_domains/1
  # PATCH/PUT /bcc_conversion_disable_domains/1.json
  def update
    respond_to do |format|
      if @bcc_conversion_disable_domain.update(bcc_conversion_disable_domain_params)
        format.html { redirect_to bcc_conversion_disable_domains_url, notice: 'Bcc conversion disable domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @bcc_conversion_disable_domain }
      else
        format.html { render :edit }
        format.json { render json: @bcc_conversion_disable_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bcc_conversion_disable_domains/1
  # DELETE /bcc_conversion_disable_domains/1.json
  def destroy
    @bcc_conversion_disable_domain.destroy
    respond_to do |format|
      format.html { redirect_to bcc_conversion_disable_domains_url, notice: 'Bcc conversion disable domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bcc_conversion_disable_domain
      @bcc_conversion_disable_domain = BccConversionDisableDomain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bcc_conversion_disable_domain_params
      params.require(:bcc_conversion_disable_domain).permit(:setting_id, :domain)
    end
end
