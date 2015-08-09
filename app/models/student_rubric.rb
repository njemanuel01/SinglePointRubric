class StudentRubric < ActiveRecord::Base
  belongs_to :user
  belongs_to :rubric
end