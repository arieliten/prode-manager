class Clasification < ActiveRecord::Base
  # == Relations
  belongs_to :team
  belongs_to :stage
  belongs_to :group

  # == Validations
  validates_presence_of :position_key, :stage
  validates_uniqueness_of :position_key, :scope=>[:stage_id]
end
