class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.integer :role_name, default: 1

      t.timestamps
    end
  end
end
