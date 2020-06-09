class CreateToDoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_items do |t|
      t.string :activity
      t.references :user, foriegn_key: true

      t.timestamps
    end
  end
end
