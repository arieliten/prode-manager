class User < ActiveRecord::Base
  # == Devise Conf
  devise :registerable, :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  # == Relations
  has_many :pools do
    def for_competition(competition)
      all(:conditions=>["competition_id = ?", competition])
    end
    def for_stage(stage)
      all(:conditions=>["stage_id = ?", stage])
    end
  end


  # == Instance Methods

  def create_pools_for(competition)
    value = competition.is_a?(Competition) ? competition.permalink : competition
    if c = Competition.find_by_permalink(value)
      c.stages.each do |stage|
        stage.matches.each do |match|
          Pool.create!(:user=>self,
                       :competition=> c,
                       :match=>match,
                       :stage=>match.stage,
                       :home_team=>match.home_team,
                       :visitor_team=>match.visitor_team)
        end
      end
    end
  end

end
