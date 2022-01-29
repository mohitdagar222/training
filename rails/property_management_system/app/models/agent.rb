class Agent < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :contact, uniqueness: true
  validates :contact, length: { is: 10 }
  validates :contact, numericality: true
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :appointments
  has_many :clients, through: :appointments
  has_many :properties
end
