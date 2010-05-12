class DropCompetitionStages < ActiveRecord::Migration
  def self.up
    drop_table :competition_stages
  end

  def self.down
    create_table :competition_stages do |t|
      t.references :competition
      t.string :name
      t.integer :position
      t.boolean :completed, :default=>false

      t.timestamps
    end
  end
end
