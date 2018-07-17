class ApiAccessAllowedIpsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_api_access_allowed_ip, only: [:destroy]

  # GET /api_access_allowed_ips
  # GET /api_access_allowed_ips.json
  def index
    @api_access_allowed_ips = ApiAccessAllowedIp.all
  end

  # GET /api_access_allowed_ips/new
  def new
    @api_access_allowed_ip = ApiAccessAllowedIp.new
  end

  # POST /api_access_allowed_ips
  # POST /api_access_allowed_ips.json
  def create
    @api_access_allowed_ip = ApiAccessAllowedIp.new(api_access_allowed_ip_params)

    respond_to do |format|
      if @api_access_allowed_ip.save
        format.html { redirect_to api_access_allowed_ips_url, notice: 'Api access allowed ip was successfully created.' }
        format.json { render :show, status: :created, location: @api_access_allowed_ip }
      else
        format.html { render :new }
        format.json { render json: @api_access_allowed_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_access_allowed_ips/1
  # DELETE /api_access_allowed_ips/1.json
  def destroy
    @api_access_allowed_ip.destroy
    respond_to do |format|
      format.html { redirect_to api_access_allowed_ips_url, notice: 'Api access allowed ip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_access_allowed_ip
      @api_access_allowed_ip = ApiAccessAllowedIp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_access_allowed_ip_params
      params.require(:api_access_allowed_ip).permit(:ip)
    end
end
