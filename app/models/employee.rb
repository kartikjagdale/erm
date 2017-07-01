class Employee < ApplicationRecord
  # Relations
  belongs_to :department
  belongs_to :manager

  # Validations
  validates :name, presence: true
end
