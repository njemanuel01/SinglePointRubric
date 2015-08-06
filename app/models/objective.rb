class Objective < ActiveRecord::Base
  belongs_to :rubric
  has_and_belongs_to_many :users
end
