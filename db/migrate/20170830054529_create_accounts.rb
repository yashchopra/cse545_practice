class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.decimal :amount
      t.string :credit
      t.decimal :balance

      t.timestamps
    end
  end
end
