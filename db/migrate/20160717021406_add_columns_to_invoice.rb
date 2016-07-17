class AddColumnsToInvoice < ActiveRecord::Migration
  def change
    remove_column :parts,    :appliance_id, :integer
    add_column    :invoices, :appliance_brand, :string
    add_column    :invoices, :appliance_type, :string
    add_column    :invoices, :appliance_model, :string
    add_column    :parts,    :name, :string
  end
end
