class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.string :price
      t.string :billing_cycle
      t.string :next_billing_date
      t.string :deadline_date
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
