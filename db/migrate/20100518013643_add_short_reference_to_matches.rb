class AddShortReferenceToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :short_reference, :string, :limit=>10
  end

  def self.down
    remove_column :matches, :short_reference
  end
end
