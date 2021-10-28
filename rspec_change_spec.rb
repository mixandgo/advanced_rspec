require "rspec"

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe User do
  it "changes the name" do
    user = User.new("John")
    expect { user.name = "Mike" }.to change(user, :name).from("John").to("Mike")
  end
end
