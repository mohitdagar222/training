class Property < ApplicationRecord
  validates :price, format: { with: /[a-zA-Z1-9]/, message: "wrong format" }
  validates :name, presence: true
  validates :area, format: { with: /[a-zA-Z1-9]/, message: "wrong format" }
  validates :type_id, numericality: true
  validates :price, presence: true
  validates :location, presence: true
  validates :area, presence: true
  validates :type_id, presence: true
  validates :agent_id, presence: true
  validates :agent_id, numericality: true

  has_many :appointments
  belongs_to :type
  belongs_to :agent
end
