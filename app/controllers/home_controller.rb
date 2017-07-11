class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @managers = Manager.all
    @employees = Employee.includes(:department).all
  end

  def retrive_employees_by_manager
    @employees = Employee
                  .includes(:department)
                  .where(manager_id: params[:manager_id])
    render :partial => "employees", :object => @employees
  end

  # @params => {employee_id: '1'}
  def get_departments
    @employee = Employee.find(params[:employee_id])
    @departments = Department.all

    respond_to do |format|
      format.html {render "departments"}
    end
  end


  # @params => {employee_id: '1', department_id: '1' }
  def change_department
    department = Department.find(params[:department_id])
    employee   = Employee.find(params[:employee_id])
    employee.update(department: department)
    redirect_to home_index_path
  end
end
