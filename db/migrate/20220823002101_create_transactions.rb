class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :credit_card_number
      t.integer :cvv
      t.date :due_date
      t.decimal :amount
      t.integer :status

      t.timestamps
    end
  end
end
