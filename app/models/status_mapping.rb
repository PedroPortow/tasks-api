class StatusMapping < ActiveRecord::Base
  has_many :tasks, foreign_key: 'status', primary_key: 'status'
end
