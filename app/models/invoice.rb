# == Schema Information
#
# Table name: invoices
#
#  id                  :integer          not null, primary key
#  address_line        :string
#  city                :string
#  state               :string
#  zip                 :integer
#  apt                 :string
#  service_description :text
#  date                :date
#  balance_amount      :float
#  tax                 :float
#  labor_price         :float
#  total_price         :float
#  deposit_amount      :float
#  warranty            :integer
#  invoice_status      :boolean
#  total_parts_price   :float
#  payment_type        :string
#  last_4_digits_card  :integer
#  check_number        :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  customer_id         :integer
#  technician_id       :integer
#

class Invoice < ActiveRecord::Base
  has_many :appliance_parts
  belongs_to :customer
  belongs_to :technician
end
