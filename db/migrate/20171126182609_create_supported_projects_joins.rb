class CreateSupportedProjectsJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :supported_projects_joins do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
