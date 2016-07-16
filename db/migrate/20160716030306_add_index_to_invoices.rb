class AddIndexToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :customer, index: true, foreign_key: true
    add_reference :invoices, :technician, index: true, foreign_key: true
  end
end
