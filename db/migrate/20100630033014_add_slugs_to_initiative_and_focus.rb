class AddSlugsToInitiativeAndFocus < ActiveRecord::Migration
  def self.up
    add_column :initiatives, :cached_slug, :string
    add_column :focus_areas, :cached_slug, :string
    add_index :initiatives, :cached_slug
    add_index :focus_areas, :cached_slug
  end

  def self.down
    remove_column :initiatives, :cached_slug
    remove_column :focus_areas, :cached_slug
  end
end
