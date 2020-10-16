class Task < ApplicationRecord

  include PgSearch::Model
  multisearchable against: :title

  belongs_to :user
  belongs_to :project, optional: true
  has_many :task_tags
  has_many :tags, through: :task_tags, dependent: :destroy

  has_one_attached :file

end
