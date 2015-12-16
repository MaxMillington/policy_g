class RemoveTotalAnnualIncomeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :total_annual_income
    remove_column :users, :savings
    remove_column :users, :saved_for_retirement
  end
end
