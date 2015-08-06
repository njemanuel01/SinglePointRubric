class BridgeObjectivesUsers < ActiveRecord::Migration
  def change
    create_table "objectives_users" do |t|
      t.integer :user_id
      t.integer :objective_id
      t.boolean :complete
    end
  end
end
