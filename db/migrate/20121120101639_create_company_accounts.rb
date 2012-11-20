class CreateCompanyAccounts < ActiveRecord::Migration
  def change
    create_table :company_accounts do |t|
      
      t.integer :company_id,     :null => false
      
      t.timestamps
    end
  end
end
