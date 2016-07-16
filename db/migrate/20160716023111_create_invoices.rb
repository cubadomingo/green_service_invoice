class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string   :address_line
      t.string   :city
      t.string   :state
      t.integer  :zip
      t.string   :apt, null: true
      t.text     :service_description
      t.date     :date
      t.float    :balance_amount
      t.float    :tax
      t.float    :labor_price
      t.float    :total_price
      t.float    :deposit_amount, null: true
      t.integer  :warranty, null: true
      t.boolean  :invoice_status
      t.float    :total_parts_price
      t.string   :payment_type
      t.integer  :last_4_digits_card, null: true
      t.integer  :check_number, null: true



      t.timestamps null: false
    end
  end
end
