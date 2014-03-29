require 'spec_helper'

describe Bill do
  before(:each) do
    @bill = Bill.new(name: "Ford", due_day: 5)
  end

  it "is valid" do
    expect(@bill).to be_valid
  end

  it "requires a name" do
    @bill.name = ""
    expect(@bill).not_to be_valid
  end

  it "doesn't require a due_day" do
    @bill.due_day = nil
    expect(@bill).to be_valid
  end
end
