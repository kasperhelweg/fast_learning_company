class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      
      t.integer :account_id
      i.string  :state

      t.timestamps
    end
  end
end
