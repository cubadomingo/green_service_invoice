class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string  :part_number
      t.decimal :retail_price
      t.integer :stock_amount
      t.decimal :wholesale_price

      t.timestamps null: false
    end
  end
end
