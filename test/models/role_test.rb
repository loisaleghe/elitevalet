# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  role_name  :integer          default("user")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
