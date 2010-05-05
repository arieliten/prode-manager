class Team < ActiveRecord::Base
  # == Relations
  has_many :home_matches,    :class_name=>'Match', :foreign_key=>'home_team_id'
  has_many :visitor_matches, :class_name=>'Match', :foreign_key=>'visitor_team_id'
  has_many :competition_teams
  has_many :competitions, :through=>:competition_teams, :source=>:competition

  # == Validations
  validates_presence_of :name
  validates_length_of :shortening, :allow_blank=>true, :maximum => 5
end
