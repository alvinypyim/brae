# == Schema Information
#
# Table name: route_stop_links
#
#  id         :integer          not null, primary key
#  route_id   :integer          not null
#  stop_id    :integer          not null
#  link_order :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RouteStopLink < ActiveRecord::Base
end
