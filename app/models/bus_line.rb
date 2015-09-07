# == Schema Information
#
# Table name: bus_lines
#
#  id         :integer          not null, primary key
#  number     :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BusLine < ActiveRecord::Base

has_many :bus_assignments, dependent: :destroy
has_many :routes, dependent: :destroy

end
