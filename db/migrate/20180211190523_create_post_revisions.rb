class CreatePostRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :post_revisions do |t|
      t.integer :post_id, null: false
      t.string :title, null: false
      t.text :raw_content, null: false
      t.text :md_content

      t.datetime :created_at, null: false
    end

    add_foreign_key :post_revisions, :posts, on_delete: :cascade
  end
end
