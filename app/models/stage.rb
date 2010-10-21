class Stage < ActiveRecord::Base
  has_permalink :name, :update=>true

  # == Relations
  belongs_to :competition
  has_many :clasifications
  has_many :matches do
    def for_group(group)
      all(:conditions=>["group_id = ?",group])
    end
  end
  has_many :groups

  # == Validations
  validates_presence_of :name, :competition


  def to_param
    self.permalink
  end


end
