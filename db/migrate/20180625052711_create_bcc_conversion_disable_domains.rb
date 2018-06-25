class CreateBccConversionDisableDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :bcc_conversion_disable_domains do |t|
      t.references :setting, foreign_key: true, null: false
      t.string :domain, null: false

      t.timestamps
    end
  end
end
