class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :first_name
      t.string :last_name
      t.string :prefix
      t.string :suffix
      t.string :address
      t.string :apt
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
