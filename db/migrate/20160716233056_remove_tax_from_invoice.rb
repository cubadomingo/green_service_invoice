class RemoveTaxFromInvoice < ActiveRecord::Migration
  def change
    remove_column :invoices, :tax, :decimal
  end
end
