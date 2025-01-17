class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :patronymic
      t.string :email, null: false
      t.string :password

      t.timestamps
    end
  end
end
