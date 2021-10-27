class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :user_id_one
      t.string :user_id_two

      t.timestamps
    end
  end
end
