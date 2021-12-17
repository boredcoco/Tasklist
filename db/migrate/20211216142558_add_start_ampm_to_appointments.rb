class AddStartAmpmToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :start_ampm, :string
  end
end
