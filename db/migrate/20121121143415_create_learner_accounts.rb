class CreateLearnerAccounts < ActiveRecord::Migration
  def change
    create_table :learner_accounts do |t|

      t.timestamps
    end
  end
end
