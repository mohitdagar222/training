class AddColumnsToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :seller_id, :bigint
    add_column :transactions, :buyer_id, :bigint
    add_timestamps :transactions
  end
end
