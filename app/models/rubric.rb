class Rubric < ActiveRecord::Base
  
  validates :name, presence: true
  
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :users
  has_many :objectives
end
