class CreateTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.string :domain, null: false
      t.string :nexthop, null: false
      t.integer :port, null: false

      t.timestamps
    end
  end
end
