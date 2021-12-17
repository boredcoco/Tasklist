class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.integer :date_day
      t.integer :date_month
      t.integer :date_year
      t.string :start_time
      t.string :end_time
      t.string :comments

      t.timestamps
    end
  end
end
