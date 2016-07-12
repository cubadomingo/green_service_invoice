# == Schema Information
#
# Table name: user_informations
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  prefix       :string
#  suffix       :string
#  address      :string
#  apt          :string
#  city         :string
#  state        :string
#  zip_code     :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class UserInformation < ActiveRecord::Base
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :prefix, presence: true
  validates :suffix, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true, length: { is: 5 }
  validates :phone_number, presence: true, length: { is: 10 }
end
