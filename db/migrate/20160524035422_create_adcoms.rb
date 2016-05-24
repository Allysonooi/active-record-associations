class CreateAdcoms < ActiveRecord::Migration
  def change
    create_table :adcoms do |t|
      t.references :admin, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
