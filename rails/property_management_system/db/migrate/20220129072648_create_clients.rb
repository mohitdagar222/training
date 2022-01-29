class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.text :contact, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :gender, null: false
      t.timestamps
    end
  end
end
