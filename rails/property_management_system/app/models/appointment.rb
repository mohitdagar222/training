class Appointment < ApplicationRecord
  require "date"

  validates :client_id, presence: true
  validates :property_id, presence: true
  validates :date, presence: true
  validates :client_id, uniqueness: { scope: :date }
  validates :agent_id, uniqueness: { scope: :date }
  validates_uniqueness_of :property_id, :scope => [:agent_id, :client_id]
  validates :date, comparison: { greater_than_or_equal_to: Date.today }

  belongs_to :property
  belongs_to :client
  belongs_to :agent

  validate :validate

  def validate
    if !Agent.find(self.agent_id).properties.ids.include?(self.property_id)
      self.errors.add :agent_id, "property does not belongs this agent"
    end
  end

  after_destroy :agent_greet

  private

  def agent_greet
    puts "Thank you #{self.agent.name} for dealing by our platform"
  end
end
