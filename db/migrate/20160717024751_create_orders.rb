class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to   :part, index: true
      t.belongs_to   :invoice, index: true
      t.integer      :quantity
      t.decimal      :parts_amount

      t.timestamps null: false
    end
  end
end
