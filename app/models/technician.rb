# == Schema Information
#
# Table name: technicians
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Technician < ActiveRecord::Base
  has_many :invoices
end
