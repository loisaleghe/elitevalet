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
class Vehicle < ApplicationRecord

  belongs_to :user

  enum status: {unpaid: 0, paid: 1}

  # Validation to check
    validates :licence_plate, presence: true, format: {with: /\A[a-zA-Z0-9]+\z/i}
    validates :colour, allow_blank: true, format: {with: /\A[a-zA-Z]+\z/i}
    validates :make, presence: true
    validates :year, allow_blank: true, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 1900,
        less_than_or_equal_to: Date.today.year
      }
end
