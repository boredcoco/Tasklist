class CreateMySettings < ActiveRecord::Migration[6.1]
  def change
    create_table :my_settings do |t|
      t.integer :happiness_bar
      t.integer :theme_color

      t.timestamps
    end
  end
end
