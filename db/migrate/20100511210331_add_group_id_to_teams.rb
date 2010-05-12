class AddGroupIdToTeams < ActiveRecord::Migration
  def self.up
    add_column :teams, :group_id, :integer
  end

  def self.down
    remove_column :teams, :group_id
  end
end
