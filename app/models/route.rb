# == Schema Information
#
# Table name: routes
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  line_id     :integer          not null
#  route_order :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Route < ActiveRecord::Base
end
