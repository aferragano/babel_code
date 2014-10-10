class CreateOriginalSnippets < ActiveRecord::Migration
  def change
    create_table :original_snippets do |t|
      t.string :title, null: false
      t.text :snippet, null: false
      t.text :description
      t.belongs_to :language, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
