class AddColumnToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :age, :bigint
  end
end
