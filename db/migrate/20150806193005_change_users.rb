class ChangeUsers < ActiveRecord::Migration
  def change
    change_table "users" do |t|
      t.boolean :is_teacher
    end
  end
end
