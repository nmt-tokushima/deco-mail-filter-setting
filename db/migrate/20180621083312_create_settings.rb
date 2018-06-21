class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.boolean :bcc_conversion
      t.string :bcc_dummy_to
      t.boolean :attachments_encryption
      t.integer :attachments_encryption_password_length
      t.string :attachments_encryption_subtitle
      t.text :attachments_encryption_additional_text
      t.integer :attachments_encryption_encoding
      t.boolean :attachments_encryption_password_notification

      t.timestamps
    end
  end
end
