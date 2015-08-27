class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.boolean :like, default: false

      t.timestamps null: false
    end
  end
end
