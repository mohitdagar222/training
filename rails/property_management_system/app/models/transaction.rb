class Transaction < ApplicationRecord
  belongs_to :property
  belongs_to :employee
  belongs_to :owner
  belongs_to :client
  validates_uniqueness_of :property_id, :scope => [:owner_id, :client_id]
end
