class Property < ApplicationRecord
  validates :name, presence: { message: "can't blank" }
  validates :price, comparison: { greater_than: 50000 }
  validates :location, exclusion: { in: %w(delhi goa), message: "reserved values" }
  validates :location, format: { with: /\A[a-zA-Z]+\z/, message: "wrong format" }
end
