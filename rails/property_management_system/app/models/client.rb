class Client < ApplicationRecord
  validates :mobile, numericality: { only_integer: true }
  #validates :dob, absence: true
  validates :mobile, uniqueness: true
  validates :name, presence: { strict: true }
  has_many :transactions
end
