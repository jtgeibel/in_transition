class Resource < ActiveRecord::Base
  belongs_to :focus_area

  validates_length_of :title, :minimum=>3
end
