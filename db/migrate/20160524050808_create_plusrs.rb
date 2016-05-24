class CreatePlusrs < ActiveRecord::Migration
  def change
    create_table :plusrs do |t|
      t.references :plan, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
