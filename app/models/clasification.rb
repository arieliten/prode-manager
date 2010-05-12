class Clasification < ActiveRecord::Base
  # == Relations
  belongs_to :team
  belongs_to :stage
  belongs_to :group
  has_many :home_matches,   :class_name=>'Match'
  has_many :visitor_matches,:class_name=>'Match'

  # == Validations
  validates_presence_of :position_key, :stage
  validates_uniqueness_of :position_key, :scope=>[:stage_id]
end
