class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :description
      t.string :account_number
      t.string :ancestry
      t.references :chart_of_account, null: false, foreign_key: true
      t.references :accountable, polymorphic: true, null: false

      t.timestamps
    end

    add_index :accounts, :ancestry
  end
end
