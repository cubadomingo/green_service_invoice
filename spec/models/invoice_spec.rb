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
#  balance_amount      :decimal(, )
#  labor_price         :decimal(, )
#  total_price         :decimal(, )
#  deposit_amount      :decimal(, )
#  warranty            :integer
#  invoice_status      :boolean
#  payment_type        :string
#  last_4_digits_card  :integer
#  check_number        :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  customer_id         :integer
#  technician_id       :integer
#  appliance_brand     :string
#  appliance_type      :string
#  appliance_model     :string
#

require 'rails_helper'

RSpec.describe Invoice, "validations" do
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:labor) }
  it { is_expected.to validate_presence_of(:tax) }
  it { is_expected.to validate_presence_of(:total) }
end
