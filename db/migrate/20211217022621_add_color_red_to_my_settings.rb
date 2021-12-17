class AddColorRedToMySettings < ActiveRecord::Migration[6.1]
  def change
    add_column :my_settings, :color_red, :integer
  end
end
