class CreateCompetitionTeams < ActiveRecord::Migration
  def self.up
    create_table :competition_teams do |t|
      t.references :competition
      t.references :team

      t.timestamps
    end
  end

  def self.down
    drop_table :competition_teams
  end
end
