class CreateWorkGroups < ActiveRecord::Migration
  def self.up
    create_table :work_groups do |t|
      t.string :name
      t.string :description
      t.references :initiative
      t.references :focus_area

      t.timestamps
    end
  end

  def self.down
    drop_table :work_groups
  end
end
