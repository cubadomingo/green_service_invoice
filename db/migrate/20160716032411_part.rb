class Part < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string  :part_number
      t.decimal :part_price
      t.string  :part_name

      t.timestamps null: false
    end
  end
end
