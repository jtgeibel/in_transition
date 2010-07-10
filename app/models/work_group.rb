class WorkGroup < ActiveRecord::Base
  belongs_to :initiative
  belongs_to :focus_area
  
  validates_presence_of :initiative, :focus_area
  validates_length_of :name, :minimum => 5
end
