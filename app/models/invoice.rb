# == Schema Information
#
# Table name: invoices
#
#  id          :integer          not null, primary key
#  description :text
#  labor       :integer
#  tax         :integer
#  total       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Invoice < ActiveRecord::Base
  validates :description, presence: true
  validates :labor, presence: true
  validates :tax, presence: true
  validates :total, presence: true
end
