class BridgeCoursesRubrics < ActiveRecord::Migration
  def change
    create_table "courses_rubrics" do |t|
      t.integer :course_id
      t.integer :rubric_id
    end
  end
end
