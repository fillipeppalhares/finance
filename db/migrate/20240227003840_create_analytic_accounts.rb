class CreateAnalyticAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :analytic_accounts do |t|

      t.timestamps
    end
  end
end
