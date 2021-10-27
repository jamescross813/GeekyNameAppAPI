class CreateFriendGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_groups do |t|
      t.references :friend, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
