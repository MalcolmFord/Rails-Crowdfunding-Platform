class CreateProjectTypeJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :project_type_joins do |t|
      t.references :project, foreign_key: true
      t.references :project_type, foreign_key: true

      t.timestamps
    end
  end
end
