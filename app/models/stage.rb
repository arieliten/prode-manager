class Stage < ActiveRecord::Base
  # == Relations
  belongs_to :competition
  has_many :clasifications

  # == Validations
  validates_presence_of :name, :competition
end
