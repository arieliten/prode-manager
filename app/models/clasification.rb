class Clasification < ActiveRecord::Base
  has_permalink :name, :update=>true

  # == Relations
  belongs_to :team
  belongs_to :stage
  belongs_to :group
  has_many :home_matches,   :class_name=>'Match', :foreign_key=>'home_clasification_id'
  has_many :visitor_matches,:class_name=>'Match', :foreign_key=>'visitor_clasification_id'

  # == Validations
  validates_presence_of :position_key, :stage
  validates_uniqueness_of :position_key, :scope=>[:stage_id]


  # == Instance Methods

  def to_param
    self.permalink
  end

  def matches
    home_matches + visitor_matches
  end

end
