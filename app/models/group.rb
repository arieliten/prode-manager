class Group < ActiveRecord::Base
  has_permalink :name, :update=>true

  # == Relations
  belongs_to :stage
  has_many :clasifications
  has_many :matches

  # == Validations
  validates_presence_of :name


  def to_param
    self.permalink
  end

end
