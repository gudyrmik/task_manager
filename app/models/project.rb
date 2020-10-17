class Project < ApplicationRecord

  include PgSearch::Model
  multisearchable against: :title

  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :tags

  default_scope { order(position: :desc) }

  validates :title, presence: true
  validates :position, presence: true, numericality: { greater_than_or_equal_to: 0 }, uniqueness: true

end
