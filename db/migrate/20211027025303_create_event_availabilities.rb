class CreateEventAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :event_availabilities do |t|
      t.references :event, null: false, foreign_key: true
      t.references :availability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
