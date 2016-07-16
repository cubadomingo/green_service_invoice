# == Schema Information
#
# Table name: appliance_parts
#
#  id            :integer          not null, primary key
#  appliance_id  :integer
#  part_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  part_quantity :integer
#  invoice_id    :integer
#

class AppliancePart < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :appliance
  belongs_to :part
end
