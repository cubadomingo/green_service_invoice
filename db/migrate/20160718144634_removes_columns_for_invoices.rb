class RemovesColumnsForInvoices < ActiveRecord::Migration
  def change
    remove_column :invoices, :appliance_brand, :string
    remove_column :invoices, :appliance_type,  :string
    remove_column :invoices, :appliance_model, :string
    add_column :invoices, :machine_brand, :string
    add_column :invoices, :machine_type, :string
    add_column :invoices, :machine_model, :string
    add_column :invoices, :machine_serial, :string
  end
end
