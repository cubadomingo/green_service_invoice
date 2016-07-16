class AddQuantityToApplianceParts < ActiveRecord::Migration
  def change
    add_column :appliance_parts, :part_quantity, :integer
  end
end
