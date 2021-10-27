class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
