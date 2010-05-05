require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Competition do
  before(:each) do
    @valid_attributes = {
      :name => "Great Tournament",
      :starts_at => Date.today,
      :ends_at => 6.months.since,
      :max_number_of_participants => 16
    }
  end


  describe "associations" do
    it 'should has many competition stages' do
      Competition.should have_many(:competition_stages)
    end
    it 'should has many matches' do
      Competition.should have_many(:matches, :through=>:competition_stages, :source=>:matches)
    end
    it 'should has many competition teams' do
      Competition.should have_many(:competition_teams)
    end
    it 'should has many teams' do
      Competition.should have_many(:teams, :through=>:competition_teams, :source=>:team)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @competition = Competition.new(@valid_attributes)
      @competition.should be_valid
    end
    it "should not create a new instance without a name" do
      @competition = Competition.new(@valid_attributes.merge!(:name=>nil))
      @competition.should_not be_valid
    end
    it "should not create a new instance without a max number of participants defined" do
      @competition = Competition.new(@valid_attributes.merge!(:max_number_of_participants=>nil))
      @competition.should_not be_valid
      @competition.errors_on(:max_number_of_participants).should_not be_empty
    end
  end

end
