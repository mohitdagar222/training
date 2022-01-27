class Client < ApplicationRecord
  validates :mobile, numericality: { only_integer: true }
  validates :dob, absence: true
  validates :mobile, uniqueness: true
end
