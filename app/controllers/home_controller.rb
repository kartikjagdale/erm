class HomeController < ApplicationController
  before_action :authenticate_user!
  
  # Home Page
  def index
    @managers = Manager.all
    @employees = Employee.includes(:department).all
  end

  # Retrive all employees based on manager selected
  # by user else return all employees
  def retrive_employees_by_manager
    @employees = 
      if params[:manager_id].present?    
        Employee.includes(:department)
                .where(manager_id: params[:manager_id])
      else
        Employee.includes(:department).all
      end

    render :partial => "employees", :object => @employees
  end

  # Fetch all deparments
  # @params => {employee_id: '1'}
  def get_departments
    @employee = Employee.find(params[:employee_id])
    @departments = Department.all
    respond_to do |format|
      format.js { render 'departments.js.erb' }
    end
  end

  # Change department of a employee
  # @params => {employee_id: '1', department_id: '1' }
  def change_department
    department = Department.find(params[:department_id])
    employee   = Employee.find(params[:employee_id])
    employee.update(department: department)
    redirect_to root_path
  end
end
