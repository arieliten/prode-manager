require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Clasification do
  before(:each) do
    @stage = mock_model(Stage)
    @valid_attributes = {
      :stage => @stage,
      :name => "Primero Grupo A",
      :position_key => "1A"
    }
  end

  describe "associations" do
    it "should belongs to a team" do
      Clasification.should belong_to(:team)
    end
    it "should belongs to a stage" do
      Clasification.should belong_to(:stage)
    end
    it "should belongs to a group" do
      Clasification.should belong_to(:group)
    end
    it "should has many home matches" do
      Clasification.should have_many(:home_matches, :class_name=>'Match', :foreign_key=>'home_clasification_id')
    end
    it "should has many visitor matches" do
      Clasification.should have_many(:visitor_matches, :class_name=>'Match', :foreign_key=>'visitor_clasification_id')
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @clasification = Clasification.new(@valid_attributes)
      @clasification.should be_valid
    end
    it "should not create a new instance without a position key" do
      @clasification = Clasification.new(@valid_attributes.merge!(:position_key=>nil))
      @clasification.should_not be_valid
      @clasification.errors_on(:position_key).should_not be_empty
    end
    it "should not create a new instance without an associated stage" do
      @clasification = Clasification.new(@valid_attributes.merge!(:stage=>nil))
      @clasification.should_not be_valid
      @clasification.errors_on(:stage).should_not be_empty
    end
    it "should not create a new instance if the position_key has already taken for the same stage" do
      @another_clasification = Clasification.create!(@valid_attributes)
      @clasification = Clasification.new(@valid_attributes)
      @clasification.should_not be_valid
      @clasification.errors_on(:position_key).should_not be_empty
    end
  end
end
