class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :friend_user_id

      t.timestamps
    end
  end
end
