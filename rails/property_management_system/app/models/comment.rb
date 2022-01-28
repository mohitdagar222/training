class Comment < ApplicationRecord
  belongs_to :commented, polymorphic: true
end
