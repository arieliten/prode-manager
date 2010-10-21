class Team < ActiveRecord::Base
  has_permalink :name, :update=>true

  # == Relations
  belongs_to :competition
  belongs_to :group
  has_many :players
  has_many :clasifications
  has_many :home_matches,   :through=>:clasifications, :source=>:home_matches
  has_many :visitor_matches,:through=>:clasifications, :source=>:visitor_matches
  # To gain perfomance
  #has_many :home_matches,    :class_name=>'Match', :foreign_key=>'home_team_id'
  #has_many :visitor_matches, :class_name=>'Match', :foreign_key=>'visitor_team_id'

  # == Validations
  validates_presence_of :name, :competition
  validates_length_of :shortening, :allow_blank=>true, :maximum => 5


  # == Instance Methods

  def to_param
    self.permalink
  end


  def matches
    home_matches + visitor_matches
  end

end
