class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :description
      t.integer :labor
      t.integer :tax
      t.integer :total

      t.timestamps null: false
    end
  end
end
