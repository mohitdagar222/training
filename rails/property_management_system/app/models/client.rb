class Client < ApplicationRecord
  validates :mobile, numericality: { only_integer: true }
end
