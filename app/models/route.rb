# == Schema Information
#
# Table name: routes
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  bus_line_id :integer          not null
#  route_order :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Route < ActiveRecord::Base

belongs_to :bus_line
has_many :route_stop_links, dependent: :destroy

end
