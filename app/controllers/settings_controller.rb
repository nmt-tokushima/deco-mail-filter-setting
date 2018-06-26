class SettingsController < ApplicationController
  def index
    if Setting.count == 0
      @setting = Setting.create_dummy
    else
      @setting = Setting.first
    end
  end

  def create
    @setting = Setting.first
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
