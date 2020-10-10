class CreateTasksTagsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :tasks, :tags do |t|
      t.references :tasks, null: false, foreign_key: true
      t.references :tags, null: false, foreign_key: true
    end
  end
end
