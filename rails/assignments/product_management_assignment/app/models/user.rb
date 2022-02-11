class User < ApplicationRecord
  has_many :products
  validates :name, :password, :dob, :address, presence: true
  validates :name, format: { with: /\A[a-zA-Z]+\z/ }
  validates :password, length: { minimum: 4 }
  validates :password, confirmation: { case_sensitive: true }
  validates :terms_of_services, acceptance: true
end
