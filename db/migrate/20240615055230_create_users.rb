class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :phone_number
      t.string :f_name
      t.string :l_name
      t.string :password_digest

      t.timestamps
    end
  end
end
