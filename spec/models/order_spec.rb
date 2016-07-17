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

require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
