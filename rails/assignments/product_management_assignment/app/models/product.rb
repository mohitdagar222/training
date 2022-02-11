class Product < ApplicationRecord
  belongs_to :user
  validates :name, :price, :user_id, presence: true
end
