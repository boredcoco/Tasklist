class AddEndAmpmToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :end_ampm, :string
  end
end
