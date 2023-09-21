class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :status_mapping, foreign_key: 'status', primary_key: 'status'
  belongs_to :priority_mapping, foreign_key: 'priority', primary_key: 'priority'

end
