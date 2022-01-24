class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :property_id
      t.string :buyer
      t.string :seller

      t.timestamps
    end
  end
end
