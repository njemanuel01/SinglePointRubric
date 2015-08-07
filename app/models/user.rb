class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :is_teacher, presence: true

  validates :email, uniqueness: true
    
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :rubrics
  has_and_belongs_to_many :objectives
end
