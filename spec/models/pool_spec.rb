require File.dirname(__FILE__) + '/../spec_helper'

describe Pool do
  it "should be valid" do
    Pool.new.should be_valid
  end
end
