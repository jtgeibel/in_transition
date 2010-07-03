class WorkGroup < ActiveRecord::Base
  belongs_to :initiative
  belongs_to :focus_area
end
