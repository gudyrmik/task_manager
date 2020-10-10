class Project < ApplicationRecord

  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :tags

end
