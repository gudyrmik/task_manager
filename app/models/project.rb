class Project < ApplicationRecord

  include PgSearch::Model
  multisearchable against: :title

  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :tags

end
