class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.boolean :bcc_conversion, null: false, default: false
      t.string :bcc_dummy_to, null: false, default: ''
      t.boolean :attachments_encryption, null: false, default: false
      t.integer :attachments_encryption_password_length, null: false, default: 8
      t.string :attachments_encryption_subtitle, null: false, default: ''
      t.text :attachments_encryption_additional_text, null: false
      t.integer :attachments_encryption_encoding, null: false, default: 1
      t.boolean :attachments_encryption_password_notification, null: false, default: false

      t.timestamps
    end
  end
end
