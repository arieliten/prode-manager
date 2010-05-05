require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Team do
  before(:each) do
    @valid_attributes = {
      :name => "Fusion Libres B",
      :shortening => "FLB"
    }
  end


  describe "associations" do
    it 'should has many home matches' do
      Team.should have_many(:home_matches, :class_name=>'Match', :foreign_key=>'home_team_id')
    end
    it 'should has many visitor matches' do
      Team.should have_many(:visitor_matches, :class_name=>'Match', :foreign_key=>'visitor_team_id')
    end
    it 'should has many competition teams' do
      Team.should have_many(:competition_teams)
    end
    it 'should has many competitions' do
      Team.should have_many(:competitions, :through=>:competition_teams, :source=>:competition)
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
    it "should not create a new instance with a long shortening" do
      @team = Team.new(@valid_attributes.merge!(:shortening=>'long abbreviation'))
      @team.should_not be_valid
      @team.errors_on(:shortening).should_not be_empty
    end
  end

end
