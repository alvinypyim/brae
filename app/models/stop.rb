# == Schema Information
#
# Table name: stops
#
#  id         :integer          not null, primary key
#  code       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stop < ActiveRecord::Base

has_many :route_stop_links, dependent: :destroy

end
