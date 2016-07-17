# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  part_id      :integer
#  invoice_id   :integer
#  quantity     :integer
#  parts_amount :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :part
end

