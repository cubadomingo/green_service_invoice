class ChangeTypesInInventories < ActiveRecord::Migration
  def change
    change_column :invoices, :balance_amount, :decimal
    change_column :invoices, :tax, :decimal
    change_column :invoices, :labor_price, :decimal
    change_column :invoices, :total_price, :decimal
    change_column :invoices, :deposit_amount, :decimal
    change_column :invoices, :total_parts_price, :decimal
  end
end
