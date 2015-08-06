class BridgeRubricsUsers < ActiveRecord::Migration
  def change
    create_table "rubrics_users" do |t|
      t.integer :rubric_id
      t.integer :user_id
      t.string :notes
    end
  end
end
