class Rubric < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :users
end
