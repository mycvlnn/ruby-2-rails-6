class AddVehicleTypeToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :vehicle_type, :string
  end
end
