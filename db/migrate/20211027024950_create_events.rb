class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :description
      t.string :est_time
      t.string :game_type

      t.timestamps
    end
  end
end
