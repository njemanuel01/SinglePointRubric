class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :courses, {where :is_teacher => true}
  has_many :rubrics, {where :is_teacher => true}
  has_and_belongs_to_many :courses, {where :is_teacher => false}
  has_and_belongs_to_many :rubrics, {where :is_teacher => false}
  has_and_belongs_to_many :objectives, {where :is_teacher => false}
end
