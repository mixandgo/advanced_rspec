require "rspec"

class User; end

RSpec.describe User do
  it "supports any nesting" do
    stub_const("User::A::B::C", "RO")
    expect(User::A::B::C).to eq("RO")
  end

  it "removes the stubbed constant" do
    expect{ User::A::B::C }.to raise_error(NameError, "uninitialized constant User::A")
  end
end
