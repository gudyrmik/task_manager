class Task < ApplicationRecord

  belongs_to :user
  belongs_to :project
  has_many :task_tags, dependent: :destroy
  has_many :tags, through: :task_tags

  has_one_attached :file

end
