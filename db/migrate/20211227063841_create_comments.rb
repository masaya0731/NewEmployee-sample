class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :customer_id, null: false
      t.integer :post_id, null: false
      t.text :body, null: false
      t.string :comment_image
      t.timestamps
    end
  end
end
