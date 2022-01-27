class Client < ApplicationRecord
  validates :mobile, numericality: { only_integer: true }
  #validates :dob, absence: true
  validates :mobile, uniqueness: true
  #validates :name, presence: { strict: true }
  validates :name, presence: true, if: :mobile_is?

  def mobile_is?
    mobile == 8930931208
  end
end
