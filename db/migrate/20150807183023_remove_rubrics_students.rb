class RemoveRubricsStudents < ActiveRecord::Migration
  def change
    rename_table :rubrics_users, :student_rubrics
    rename_table :objectives_users, :student_objectives
  end
end
