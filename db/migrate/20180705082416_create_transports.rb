class CreateTransports < ActiveRecord::Migration[5.2]
  def change
    create_table :transports do |t|
      t.string :domain
      t.string :nexthop
      t.integer :port

      t.timestamps
    end
  end
end
