class ProjectTypeJoin < ApplicationRecord
  belongs_to :project
  belongs_to :project_type
end
