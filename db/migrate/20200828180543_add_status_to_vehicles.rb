class AddStatusToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :status, :integer, default: 0
  end
end
