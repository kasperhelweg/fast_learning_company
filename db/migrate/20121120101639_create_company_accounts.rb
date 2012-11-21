class CreateCompanyAccounts < ActiveRecord::Migration
  def change
    create_table :company_accounts do |t|
      
      t.timestamps
    end
  end
end
