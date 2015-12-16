class AddAnnualIncomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_annual_income, :integer, default: 0
    add_column :users, :savings, :integer, default: 0
    add_column :users, :saved_for_retirement, :integer, default: 0
  end
end
