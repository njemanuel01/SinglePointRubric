class Objective < ActiveRecord::Base
  belongs_to :rubric
  has_many :student_objectives
  has_many :users, :through => :student_objectives
end
