class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :department
      t.integer :salary, null: false, default: 0

      t.timestamps
    end
  end
end
