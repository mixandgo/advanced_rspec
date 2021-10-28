require "rspec"

RSpec.describe "yield" do
  it "yields with args" do
    expect { |n| "somestr".tap(&n) }.to yield_with_args(/str/)
  end
end
