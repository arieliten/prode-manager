class Team < ActiveRecord::Base
  # == Relations
  belongs_to :competition
  belongs_to :group
  has_many :home_matches,    :class_name=>'Match', :foreign_key=>'home_team_id'
  has_many :visitor_matches, :class_name=>'Match', :foreign_key=>'visitor_team_id'

  # == Validations
  validates_presence_of :name, :competition
  validates_length_of :shortening, :allow_blank=>true, :maximum => 5
end
