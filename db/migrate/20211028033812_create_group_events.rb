class CreateGroupEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :group_events do |t|
      t.references :group, null: false, foreign_key: true
      t.string :event
      t.string :references

      t.timestamps
    end
  end
end
