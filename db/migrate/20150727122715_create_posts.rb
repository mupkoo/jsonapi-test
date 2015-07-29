class CreatePosts < ActiveRecord::Migration
    def change
        create_table :posts, id: :uuid do |t|
            t.integer :author_id
            t.string :title
            t.text :body

            t.timestamps null: false
        end

        add_index :posts, :author_id
    end
end
