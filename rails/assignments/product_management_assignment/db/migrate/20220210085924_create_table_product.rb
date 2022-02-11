class CreateTableProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
