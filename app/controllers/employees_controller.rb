class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.limit(10).to_json
  end
end
