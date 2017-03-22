class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :subject
      t.string :content
      t.string :teacher

      t.timestamps null: false
    end
  end
end
