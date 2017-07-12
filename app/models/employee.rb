# == Schema Information
#
# Table name: employees
#
#  id            :integer          not null, primary key
#  name          :string(255)      default(""), not null
#  department_id :integer          not null
#  manager_id    :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Employee < ApplicationRecord
  # Relations
  belongs_to :department
  belongs_to :manager

  # Validations
  validates :name, presence: true

  def department_name
    department.name
  end
end
