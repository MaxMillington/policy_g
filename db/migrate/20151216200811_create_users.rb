class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :password_digest
      t.integer :total_annual_income
      t.integer :savings
      t.integer :saved_for_retirement
      t.integer :life_insurance
    end
  end
end
