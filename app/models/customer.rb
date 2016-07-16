# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  name         :string
#  phone_number :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Customer < ActiveRecord::Base
  has_many :invoices
end
