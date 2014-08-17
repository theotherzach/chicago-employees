module Api
  class EmployeesController < ApplicationController
    def index
      render json: @employees = Employee.all.limit(100)
    end
  end
end
