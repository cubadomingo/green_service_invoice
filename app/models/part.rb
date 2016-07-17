# == Schema Information
#
# Table name: parts
#
#  id              :integer          not null, primary key
#  part_number     :string
#  retail_price    :decimal(, )
#  stock_amount    :integer
#  wholesale_price :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string
#

class Part < ActiveRecord::Base
  has_many :orders
  has_many :invoices, through: :orders
end
