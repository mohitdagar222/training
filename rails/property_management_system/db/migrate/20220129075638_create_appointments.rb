class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :client, foreign_key: true
      t.references :agent, foreign_key: true
      t.references :property, foreign_key: true
      t.date :date, null: false

      t.timestamps
    end
  end
end
