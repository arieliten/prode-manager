require 'spec_helper'
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Player do
  before(:each) do
    @mock_team = mock_model(Team)
    @valid_attributes = {
      :team => @mock_team,
      :first_name => "Diego Armando",
      :last_name => "Maradona",
      :age => 32,
      :height => 166,
      :weight => 85,
      :nationality => "argentinian"
    }
  end

  describe "associations" do
    it 'should belongs to a team' do
      Player.should belong_to(:team)
    end
  end


  describe "validations" do
    it "should create a new instance given valid attributes" do
      @team = Player.new(@valid_attributes)
      @team.should be_valid
    end
    it "should not create a new instance without a first name" do
      @team = Player.new(@valid_attributes.merge!(:first_name=>nil))
      @team.should_not be_valid
      @team.errors_on(:first_name).should_not be_empty
    end
    it "should not create a new instance without a last name" do
      @team = Player.new(@valid_attributes.merge!(:last_name=>nil))
      @team.should_not be_valid
      @team.errors_on(:last_name).should_not be_empty
    end
  end



  describe "instance methods" do
    describe ".full_name" do
      it "should return the formatted full name" do
        @player = Player.create!(@valid_attributes)
        @player.full_name.should == "Maradona, Diego Armando"
      end
    end
  end

end
