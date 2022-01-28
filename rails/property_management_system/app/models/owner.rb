class Owner < ApplicationRecord
  has_many :transactions
  has_many :comments, as: :commented
end
