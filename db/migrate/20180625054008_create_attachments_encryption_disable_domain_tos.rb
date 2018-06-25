class CreateAttachmentsEncryptionDisableDomainTos < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments_encryption_disable_domain_tos do |t|
      t.references :setting, foreign_key: true, null: false
      t.string :domain, null: false

      t.timestamps
    end
  end
end
