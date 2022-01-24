class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.bigint :mobile
      t.date :dob

      t.timestamps
    end
  end
end
