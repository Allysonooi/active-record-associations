class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :payment_method

      t.timestamps null: false
    end
  end
end
