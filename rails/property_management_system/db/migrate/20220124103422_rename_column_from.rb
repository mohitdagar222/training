class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :buyer, :buyer_id
    rename_column :transactions, :seller, :seller_id
  end
end
