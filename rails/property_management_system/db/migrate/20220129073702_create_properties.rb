class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false
      t.string :price, null: false
      t.string :location, null: false
      t.string :area, null: false
      t.references :types, foreign_key: true
      t.references :agents, foriegn_key: true

      t.timestamps
    end
  end
end
