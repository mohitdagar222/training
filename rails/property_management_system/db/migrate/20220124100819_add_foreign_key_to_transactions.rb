class AddForeignKeyToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :transactions, :properties, column: :property_id, primary_key: :id
  end
end
