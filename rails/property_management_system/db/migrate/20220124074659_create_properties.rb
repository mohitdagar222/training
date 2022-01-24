class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :type
      t.bigint :price
      t.text :location

      t.timestamps
    end
  end
end
