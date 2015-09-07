# == Schema Information
#
# Table name: buses
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bus < ActiveRecord::Base

has_many :bus_assignments, dependent: :destroy

end
