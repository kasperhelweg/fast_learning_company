class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :id_hash
      
      t.date :starts
      t.date :ends
      t.date :online_date,             :null => false
      
      t.integer :course_id,            :null => false
      
      t.timestamps
    end
    add_index :classrooms, :id_hash,   :unique => true
  end
end
