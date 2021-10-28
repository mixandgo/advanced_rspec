require "rspec"

class User; end

class Admin
  def can_edit?(resource) = true
end

class Member
  def can_edit?(resource) = true
end

shared_examples "editing" do
  let(:user) { instance_double(User) }

  it "returns true" do
    expect(subject.can_edit?(user)).to eq(true)
  end

  it "receives a User" do
    allow(subject).to receive(:can_edit?) do |arg|
      expect(arg).to be_a(User)
    end
  end
end

describe Admin do
  include_examples "editing"
end

describe Member do
  include_examples "editing"
end
