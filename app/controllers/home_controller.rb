class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @managers = Manager.all
    @employees = Employee.all
  end

  def retrive_employees_by_manager
    @employees = Employee.where(manager_id: params[:manager_id])
    render :partial => "employees", :object => @employees
  end
end
