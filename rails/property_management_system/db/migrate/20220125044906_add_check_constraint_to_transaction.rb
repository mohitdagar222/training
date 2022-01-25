class AddCheckConstraintToTransaction < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE transactions ADD CONSTRAINT check_constraint CHECK (seller_id <> buyer_id)"
  end
end
