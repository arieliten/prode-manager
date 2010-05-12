require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Team do
  before(:each) do
    @competition = mock_model(Competition)
    @valid_attributes = {
      :name => "Fusion Libres B",
      :shortening => "FLB",
      :competition => @competition
    }
  end


  describe "associations" do
    it 'should belongs to a competition' do
      Team.should belong_to(:competition)
    end
    it 'should belongs to a group' do
      Team.should belong_to(:group)
    end
    it 'should has many clasifications' do
      Team.should have_many(:clasifications)
    end
    it 'should has many home matches' do
      Team.should have_many(:home_matches, :through=>:clasifications, :source=>:home_matches)
    end
    it 'should has many visitor matches' do
      Team.should have_many(:visitor_matches, :through=>:clasifications, :source=>:visitor_matches)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @team = Team.new(@valid_attributes)
      @team.should be_valid
    end
    it "should not create a new instance without a name" do
      @team = Team.new(@valid_attributes.merge!(:name=>nil))
      @team.should_not be_valid
      @team.errors_on(:name).should_not be_empty
    end
    it "should not create a new instance without a long shortening" do
      @team = Team.new(@valid_attributes.merge!(:shortening=>'long abbreviation'))
      @team.should_not be_valid
      @team.errors_on(:shortening).should_not be_empty
    end
    it "should not create a new instance without an associated competition" do
      @team = Team.new(@valid_attributes.merge!(:competition=>nil))
      @team.should_not be_valid
      @team.errors_on(:competition).should_not be_empty
    end
  end

end
