class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :name, null: false
      t.decimal :amount, null: false
      t.datetime :date

      t.timestamps
    end
  end
end
