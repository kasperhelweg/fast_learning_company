class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      

      t.integer :classroom_id
      t.integer :learner_id,       :null => false         
      t.integer :course_id,        :null => false     
      t.string  :status,           :null => false             

      t.timestamps
    end
    add_index( :enrollments, [:learner_id, :course_id, :classroom_id], :unique => true )
  end
end
