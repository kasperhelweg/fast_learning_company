class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|

      t.string :type,               :null => false
      t.string :status,             :null => false
      t.string :name,               :null => false
      
      t.string :id_hash,            :null => false
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :password_digest,    :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      
      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.string :remember_token

      ## Learners
      t.integer :company_id

      t.timestamps
    end
    add_index :users, :id_hash,              :unique => true
    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :status
    add_attachment :users, :avatar
  end
end
