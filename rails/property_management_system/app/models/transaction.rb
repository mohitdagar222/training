class Transaction < ApplicationRecord
  belongs_to :property
  belongs_to :employee
  belongs_to :client
end
