class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :status_mapping, foreign_key: 'status', primary_key: 'status'

end
