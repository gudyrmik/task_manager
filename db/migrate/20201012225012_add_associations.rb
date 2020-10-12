class AddAssociations < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :project, foreign_key: true
    add_reference :projects, :user, foreign_key: true
    add_reference :tasks, :user, foreign_key: true
    add_reference :tags, :user, foreign_key: true
  end
end
