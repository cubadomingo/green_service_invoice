class Appliance < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :appliance_brand
      t.string :appliance_type
      t.string :appliance_model

      t.timestamps null: false
    end
  end
end
