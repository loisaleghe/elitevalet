class AddUserToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_reference :vehicles, :user, null: false, foreign_key: true
  end
end
