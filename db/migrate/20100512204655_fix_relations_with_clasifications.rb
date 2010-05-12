class FixRelationsWithClasifications < ActiveRecord::Migration
  def self.up
    add_column :matches, :home_clasification_id, :integer
    add_column :matches, :visitor_clasification_id, :integer
    rename_column :groups, :competition_stage_id, :stage_id
    rename_column :matches, :competition_stage_id, :stage_id
    remove_column :teams, :group_id
  end

  def self.down
    remove_column :matches, :home_clasification_id
    remove_column :matches, :visitor_clasification_id
    rename_column :groups, :stage_id, :competition_stage_id
    rename_column :matches, :stage_id, :competition_stage_id
    add_column :teams, :group_id, :integer
  end
end
