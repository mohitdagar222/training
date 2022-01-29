class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :name, null: false
      t.text :contact, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :gender, null: false

      t.timestamps
    end
  end
end
