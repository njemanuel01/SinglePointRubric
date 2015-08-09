class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :is_teacher, :inclusion => { :in => [true, false] }

  validates :email, uniqueness: true
    
  has_and_belongs_to_many :courses
  has_many :rubrics, :through => :student_rubrics
  has_many :objectives, :through => :student_objectives
end
