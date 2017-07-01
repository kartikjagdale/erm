class Manager < ApplicationRecord
  # Relations
  has_many :employees

  # Validations
  validates :name, presence: true
end
