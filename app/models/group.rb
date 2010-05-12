class Group < ActiveRecord::Base
  # == Relations
  belongs_to :stage
  has_many :clasifications

  # == Validations
  validates_presence_of :name
end
