class Rubric < ActiveRecord::Base
  
  validates :name, presence: true
  
  has_and_belongs_to_many :courses
  has_many :users, :through => :student_rubrics
  has_many :objectives
end
