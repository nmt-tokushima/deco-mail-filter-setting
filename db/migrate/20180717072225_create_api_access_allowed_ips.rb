class CreateApiAccessAllowedIps < ActiveRecord::Migration[5.2]
  def change
    create_table :api_access_allowed_ips do |t|
      t.string :ip

      t.timestamps
    end
  end
end
