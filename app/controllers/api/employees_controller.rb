module Api
  class EmployeesController < ApplicationController
    def index
      render json: @employees = Employee.all.limit(1000);
    end
  end
end
