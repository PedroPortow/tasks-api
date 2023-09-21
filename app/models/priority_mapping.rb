class PriorityMapping < ActiveRecord::Base
  has_many :tasks, foreign_key: 'priority', primary_key: 'priority'
end
