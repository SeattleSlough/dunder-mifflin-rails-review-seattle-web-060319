class EmployeesController < ApplicationController


def index
    @employees = Employee.all 
end

def new
   @employee = Employee.new
   @dogs = Dog.all
end

def show
    @employee = Employee.find(params[:id])
end

def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to employee_path(@employee)
end

def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
end

def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
end

private

def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
end

end