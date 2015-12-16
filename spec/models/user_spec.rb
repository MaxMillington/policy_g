require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(username: "Steve",
             password: "steve",
             total_annual_income: 100000,
             savings: 200000,
             saved_for_retirement: 50000)
  end

  it "is valid" do
    expect(user).to be_valid
  end

  it "returns the correct suggested life insurance amount" do
    expect(user.suggested_life_insurance).to eq(450000)
  end

end