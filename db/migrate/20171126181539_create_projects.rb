class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :funding_goal
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :project_type, foreign_key: true
      t.integer :total_amount_raised

      t.timestamps
    end
  end
end
