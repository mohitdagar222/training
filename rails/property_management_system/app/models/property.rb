class Property < ApplicationRecord
  validates :name, presence: { message: "can't blank" }
  validates :price, comparison: { greater_than: 50000 }
end
