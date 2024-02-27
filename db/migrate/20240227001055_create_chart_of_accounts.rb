class CreateChartOfAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :chart_of_accounts do |t|
      t.string :description
      t.string :money
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
