class Appointment < ApplicationRecord
  require "date"
  validates :agent_id, presence: true
  validates :client_id, presence: true
  validates :property_id, presence: true
  validates :date, presence: true
  validates :client_id, uniqueness: { scope: :date }
  validates :agent_id, uniqueness: { scope: :date }
  validates_uniqueness_of :property_id, :scope => [:agent_id, :client_id]
  validates :date, comparison: { greater_than_or_equal_to: Date.today }
end
