class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|

      t.integer :accountant_id
      t.integer :accountable_id
      t.string  :accountable_type

      t.timestamps
    end
  end
end
