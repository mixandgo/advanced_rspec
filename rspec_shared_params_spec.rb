require "rspec"
class User; end
class Member; end

class Admin
  def can_edit?(resource) = true
end

class Member
  def can_edit?(resource) = true
end

shared_examples "editing" do |type|
  it "returns true" do
    expect(subject.can_edit?(user)).to eq(true)
  end

  it "receives a User" do
    allow(subject).to receive(:can_edit?) do |arg|
      expect(arg).to be_an_instance_of(type)
    end
  end
end

describe Admin do
  let(:user) { instance_double(User) }
  include_examples "editing", User
end

describe Member do
  let(:user) { instance_double(Member) }
  include_examples "editing", Member
end
