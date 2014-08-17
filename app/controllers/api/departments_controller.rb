module Api
  class DepartmentsController < ApplicationController
    def index
      @departments = [
        { name: 'WATER MGMNT' },
        { name: 'POLICE' },
        { name: 'GENERAL SERVICES' },
        { name: 'CITY COUNCIL' },
        {name: 'STREETS & SAN'},
        {name: 'AVIATION'},
        {name: 'FIRE'},
        {name: 'FAMILY & SUPPORT'},
        {name: 'IPRA'},
        {name: 'BUSINESS AFFAIRS'},
        {name: 'OEMC'},
        {name: 'TRANSPORTN'},
        {name: 'HEALTH'},
        {name: 'MAYOR\'S OFFICE'},
        {name: 'LAW'}
      ]
      render json: @departments
    end
  end
end
