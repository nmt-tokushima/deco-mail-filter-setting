class SettingsController < ApplicationController
  before_action :authenticate_user!, except: [:index_api_v1]

  def index
    @setting = Setting.current
  end

  def index_api_v1
    if ApiAccessAllowedIp.count > 0
      unless ApiAccessAllowedIp.all.map(&:ip).include? request.remote_ip
        render status: 403, json: { message: 'Forbidden' }
      end
    end
    @setting = Setting.current
  end

  def create
    @setting = Setting.current
    if @setting.update(setting_params)
      redirect_to root_url, notice: '保存しました'
    else
      render 'index'
    end
  end

  private
    def setting_params
      params.require(:setting).permit(
        :bcc_conversion,
        :bcc_dummy_to,
        :attachments_encryption,
        :attachments_encryption_password_length,
        :attachments_encryption_subject,
        :attachments_encryption_additional_text,
        :attachments_encryption_encoding,
        :attachments_encryption_password_notification
      )
    end
end
