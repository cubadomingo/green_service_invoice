# == Schema Information
#
# Table name: appliances
#
#  id              :integer          not null, primary key
#  appliance_brand :string
#  appliance_type  :string
#  appliance_model :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Appliance < ActiveRecord::Base
  has_many :appliance_parts
  has_many :parts, through: :appliance_parts
end
