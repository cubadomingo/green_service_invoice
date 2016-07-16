class CreateAppliancesAndParts < ActiveRecord::Migration
  def change
    create_table :appliance_parts do |t|
      t.belongs_to :appliance, index: true
      t.belongs_to :part, index: true

      t.timestamps null: false
    end
  end
end
