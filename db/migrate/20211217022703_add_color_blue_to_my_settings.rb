class AddColorBlueToMySettings < ActiveRecord::Migration[6.1]
  def change
    add_column :my_settings, :color_blue, :integer
  end
end
