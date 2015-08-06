class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :rubrics
  has_and_belongs_to_many :objectives
end
