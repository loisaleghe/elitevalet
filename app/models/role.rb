# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  role_name  :integer          default("user")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Role < ApplicationRecord

  has_many :users
  enum role_name: {admin: 0, user: 1}
end
