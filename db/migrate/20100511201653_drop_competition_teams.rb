class DropCompetitionTeams < ActiveRecord::Migration
  def self.up
    drop_table :competition_teams
  end

  def self.down
    create_table :competition_teams do |t|
      t.references :competition
      t.references :team

      t.timestamps
    end
  end
end
