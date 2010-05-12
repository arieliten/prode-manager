class Stage < ActiveRecord::Base
  # == Relations
  belongs_to :competition
  has_many :clasifications
  has_many :matches
  has_many :groups

  # == Validations
  validates_presence_of :name, :competition
end
