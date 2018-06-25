class CreateAttachmentsEncryptionDisableEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments_encryption_disable_emails do |t|
      t.references :setting, foreign_key: true, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
