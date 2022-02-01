class Agent < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :contact, uniqueness: true
  validates :contact, numericality: true
  validates :contact, length: { minimum: 10, maximum: 10, too_long: "contact number is too long", too_short: "contact number is too short" }
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :reviews, as: :reviewed
  has_many :appointments
  has_many :clients, through: :appointments
  #has_and_belongs_to_many :clients
  has_many :properties

  validates :name, length: { maximum: 20 }
  before_validation :remove_whitespaces
  after_validation :normalize_name
  before_save :function1
  after_save :function2
  before_create :function3
  after_create :function4
  after_commit :function5

  def remove_whitespaces
    name.strip!
  end

  def normalize_name
    self.name = name.downcase.titleize
  end

  def function1
    self.name = "amar"
  end

  def function2
    self.name = "raman"
  end

  def function3
    puts self.name.upcase
  end

  def function4
    self.name = "after create"
  end

  def function5
    self.name = "raju"
  end
end
