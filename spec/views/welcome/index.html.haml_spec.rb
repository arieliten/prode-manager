require 'spec_helper'

describe "/welcome/index" do
  before(:each) do
    render 'welcome/index'
  end

  it "should tell you where to find the file" do
    response.should be_true
  end
end
