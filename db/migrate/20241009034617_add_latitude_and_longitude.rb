class AddLatitudeAndLongitude < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :latitude, :decimal
    add_column :properties, :longitude, :decimal
  end
end
