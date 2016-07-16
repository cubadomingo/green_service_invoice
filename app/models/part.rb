# == Schema Information
#
# Table name: parts
#
#  id          :integer          not null, primary key
#  part_number :string
#  part_price  :decimal(, )
#  part_name   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Part < ActiveRecord::Base
  has_many :appliance_parts
  has_many :appliances, through: :appliance_parts
end
