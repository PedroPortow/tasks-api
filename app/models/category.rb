class Category < ApplicationRecord
  belongs_to :user


  has_many :tasks_categories
  has_many :tasks, through: :tasks_categories
end
