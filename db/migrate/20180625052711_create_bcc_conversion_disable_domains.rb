class CreateBccConversionDisableDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :bcc_conversion_disable_domains do |t|
      t.references :setting, foreign_key: true
      t.string :domain

      t.timestamps
    end
  end
end
