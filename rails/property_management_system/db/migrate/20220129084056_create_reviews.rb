class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.references :reviewed, polymorphic: true

      t.timestamps
    end
  end
end
