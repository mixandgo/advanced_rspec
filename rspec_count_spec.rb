require "rspec"

class User
  LOCATION = "USA"
end

RSpec.describe User do
  it "stubs the constant" do
    stub_const("User::LOCATION", "RO")
    expect(User::LOCATION).to eq("RO")
  end

  it "restores the constant" do
    expect(User::LOCATION).to eq("USA")
  end
end
