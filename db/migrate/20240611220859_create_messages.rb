class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end

#user_id:: since we have User model Rails automatically set user_id as a foreign_key and  will look for a users table makes the connection between id in the user table with the user_id in messages table
