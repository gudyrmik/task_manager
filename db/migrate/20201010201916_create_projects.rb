class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
