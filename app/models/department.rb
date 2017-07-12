# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string(255)      default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Department < ApplicationRecord
  # Relations
  has_many :employees

  # Validations
  validates :name, presence: true
end
