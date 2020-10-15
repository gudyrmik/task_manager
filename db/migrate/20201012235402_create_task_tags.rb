class CreateTaskTags < ActiveRecord::Migration[6.0]
  def change
    create_table :task_tags do |t|
      t.belongs_to :task
      t.belongs_to :tag
      t.timestamps
    end
  end
end
