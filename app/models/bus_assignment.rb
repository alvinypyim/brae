# == Schema Information
#
# Table name: bus_assignments
#
#  id         :integer          not null, primary key
#  bus_id     :integer          not null
#  line_id    :integer          not null
#  depart_at  :time             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BusAssignment < ActiveRecord::Base
end
