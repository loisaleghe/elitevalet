# == Schema Information
#
# Table name: vehicles
#
#  id            :bigint           not null, primary key
#  colour        :string(255)
#  licence_plate :string(255)
#  make          :string(255)
#  model         :string(255)
#  status        :integer          default("unpaid")
#  year          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_vehicles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
