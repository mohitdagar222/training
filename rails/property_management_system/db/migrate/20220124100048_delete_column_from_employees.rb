class DeleteColumnFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :age, :bigint
  end
end
