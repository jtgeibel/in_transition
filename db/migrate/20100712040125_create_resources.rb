class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :title
      t.references :focus_area
      t.string :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :resources
  end
end
