class CreateCompetitionStages < ActiveRecord::Migration
  def self.up
    create_table :competition_stages do |t|
      t.references :competition
      t.string :name
      t.integer :position
      t.boolean :completed, :default=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :competition_stages
  end
end
