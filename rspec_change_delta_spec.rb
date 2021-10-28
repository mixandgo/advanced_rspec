require "rspec"

RSpec.describe "Number" do
  it "changes by" do
    a = 1
    expect { a += 3 }.to change { a }.by(3)
    expect { a += 3 }.to change { a }.by_at_least(3)
    expect { a += 1 }.to change { a }.by_at_most(1)
  end
end
