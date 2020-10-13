class CreateTaskTags < ActiveRecord::Migration[6.0]
  def change
    create_table :task_tags do |t|
      t.references :task, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end

    add_reference :tasks, :task_tag, foreign_key: true
    add_reference :tags, :task_tag, foreign_key: true
  end
end
