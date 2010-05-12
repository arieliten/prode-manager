require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Group do
  before(:each) do
    @valid_attributes = {
      :name => "Group A"
    }
  end


  describe "associations" do
    it 'should belongs to a stage' do
      Group.should belong_to(:stage)
    end
    it "should have many clasifications" do
      Group.should have_many(:clasifications)
    end
  end

  
  describe "validations" do
    it "should create a new instance given valid attributes" do
      @group = Group.new(@valid_attributes)
      @group.should be_valid
    end
    it "should not create a new instance without a name" do
      @group = Group.new(@valid_attributes.merge!(:name=>nil))
      @group.should_not be_valid
      @group.errors_on(:name).should_not be_empty
    end
  end

end
