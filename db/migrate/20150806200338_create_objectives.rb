class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :description
      t.integer :rubric_id

      t.timestamps null: false
    end
  end
end
