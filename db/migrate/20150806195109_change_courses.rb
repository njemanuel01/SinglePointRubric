class ChangeCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :user_id
  end
end
