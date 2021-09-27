class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :publish_date
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end

