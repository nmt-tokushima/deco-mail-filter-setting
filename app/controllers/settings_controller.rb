class SettingsController < ApplicationController
  def index
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
        :attachments_encryption_subtitle,
        :attachments_encryption_additional_text,
        :attachments_encryption_encoding,
        :attachments_encryption_password_notification
      )
    end
end
