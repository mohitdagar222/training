class Employee < ApplicationRecord
  has_many :transactions
  has_many :properties, through: :transactions
  has_many :comments, as: :commented
end
