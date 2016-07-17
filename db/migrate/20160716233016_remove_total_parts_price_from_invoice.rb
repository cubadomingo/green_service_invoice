class RemoveTotalPartsPriceFromInvoice < ActiveRecord::Migration
  def change
    remove_column :invoices, :total_parts_price, :decimal
  end
end
