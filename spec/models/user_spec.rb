require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(username: "Steve",
             password: "steve")
  end

  it "is valid" do
    expect(user).to be_valid
  end

end