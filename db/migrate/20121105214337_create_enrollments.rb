class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      

      t.integer :classroom_id,      :null => false
      t.integer :learner_id,        :null => false
      t.string :status,             :null => false

      t.timestamps
    end
    
  end
end
