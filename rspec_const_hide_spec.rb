require "rspec"

class User; end

RSpec.describe User do
  it "hides existing constants" do
    hide_const("User")
    expect{ User.new }.to raise_error(NameError, "uninitialized constant User")
  end

  it "restores the hidden constant" do
    expect(User.new).to be_a(User)
  end
end
