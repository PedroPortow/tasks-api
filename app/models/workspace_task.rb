class WorkspaceTask < ApplicationRecord
  belongs_to :task
  belongs_to :workspace
end
