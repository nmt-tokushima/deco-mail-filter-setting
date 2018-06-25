class CreateAttachmentsEncryptionDisableEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments_encryption_disable_emails do |t|
      t.references :setting, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
