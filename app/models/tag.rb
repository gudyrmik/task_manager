class Tag < ApplicationRecord

  include PgSearch::Model
  multisearchable against: :title

  belongs_to :user
  has_many :task_tags
  has_many :tasks, through: :task_tags, dependent: :destroy

  validates :title, presence: true

end
