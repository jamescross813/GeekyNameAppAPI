class CreateUserAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :user_availabilities do |t|
      t.references :user, null: false, foreign_key: true
      t.references :availability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
