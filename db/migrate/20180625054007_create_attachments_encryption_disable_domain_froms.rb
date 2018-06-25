class CreateAttachmentsEncryptionDisableDomainFroms < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments_encryption_disable_domain_froms do |t|
      t.references :setting, foreign_key: true
      t.string :domain

      t.timestamps
    end
  end
end
