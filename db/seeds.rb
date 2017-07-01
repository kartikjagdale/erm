# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Only For Development Env.
if Rails.env.development?

  # Create a Admin
  User.find_or_create_by(email: 'admin@example.com') do |user|
    user.password = '123456'
    user.password_confirmation = '123456'
  end

  puts '============ Admin Created ============'

  # Create Departments

  departments = ['Production', 'R&D', 'Purchasing', 'Marketing', 'Human Resource Management', 'Accounting and Finance']

  departments.each do |department_name|
    new_department = Department.create!(
      name: department_name
    )
    puts "Department #{new_department.name} saved!"
  end

  puts '============ Departments Created ============'


  # Create Managers
  5.times do |i| 
    new_manager = Manager.create!(
      name: Faker::Name.unique.name
    )
    puts "Manager #{new_manager.name} saved!"
  end

  puts '============ Managers Created ============'


  # Create Employees
  @managers = Manager.all
  @departments = Department.all

  100.times do |i|
    new_employee = Employee.create!(
      name: Faker::Name.unique.name,
      manager: @managers[i%5],
      department: @departments[i%5]
    )
  end
end