class RenameSettingsAttachmentsEncryptionSubtitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :settings, :attachments_encryption_subtitle, :attachments_encryption_subject
  end
end
