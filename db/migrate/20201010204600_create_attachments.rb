class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.attachment :file
      t.belongs_to :user

      t.timestamps
    end
  end
end
