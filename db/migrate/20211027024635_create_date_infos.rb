class CreateDateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :date_infos do |t|
      t.integer :day
      t.string :month
      t.integer :month_num
      t.integer :year

      t.timestamps
    end
  end
end
