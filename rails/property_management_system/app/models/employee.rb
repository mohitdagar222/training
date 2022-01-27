class Employee < ApplicationRecord
  has_many :transactions
  has_many :properties, through: :transactions
end
