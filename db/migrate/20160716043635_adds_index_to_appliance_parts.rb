class AddsIndexToApplianceParts < ActiveRecord::Migration
  def change
    add_reference :appliance_parts, :invoice, index: true, foreign_key: true
  end
end
