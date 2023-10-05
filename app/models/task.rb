class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :status_mapping, foreign_key: 'status', primary_key: 'status'
  belongs_to :priority_mapping, foreign_key: 'priority', primary_key: 'priority'

  has_many :tasks_categories
  has_many :categories, through: :tasks_categories

  validates :title, presence: true, length: { minimum: 3, maximum: 100}
end
