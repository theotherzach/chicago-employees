# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

require 'csv'

file = Rails.root.join('db', 'Current_Employee_Names__Salaries__and_Position_Titles.csv')

CSV.foreach(file, headers: true) do |row|
  salary = row["Employee Annual Salary"].gsub(/[^\d\.]/, '').to_i

  Employee.create({
    name: row["Name"],
    title: row["Position Title"],
    department: row["Department"],
    salary: salary
  })
end

p "There are now #{Employee.all.count} employees in the database."
