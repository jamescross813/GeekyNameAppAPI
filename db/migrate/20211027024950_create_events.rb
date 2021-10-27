class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :group, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :event_name
      t.string :description
      t.string :est_time

      t.timestamps
    end
  end
end
