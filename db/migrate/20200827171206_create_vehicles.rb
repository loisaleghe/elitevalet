class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :licence_plate
      t.string :colour
      t.string :make
      t.string :model
      t.string :year

      t.timestamps
    end
  end
end
