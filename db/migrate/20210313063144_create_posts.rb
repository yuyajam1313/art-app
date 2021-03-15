class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :visual_reading, null: false
      t.text :question,       null: false
      t.text :answer,         null: false
      t.references :user,     foreing_key: true
      t.timestamps
    end
  end
end
