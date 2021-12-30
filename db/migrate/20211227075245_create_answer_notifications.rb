class CreateAnswerNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_notifications do |t|
      t.integer :visiter_id, null: false
      t.integer :visited_id, null: false
      t.integer :question_id
      t.integer :answer_id
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false
      t.timestamps
    end
  end
end
