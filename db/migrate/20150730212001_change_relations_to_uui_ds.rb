class ChangeRelationsToUuiDs < ActiveRecord::Migration
    def change
        remove_column :posts, :author_id, :integer
        add_column :posts, :author_id, :uuid
        add_index :posts, :author_id

        remove_column :comments, :post_id, :integer
        add_column :comments, :post_id, :uuid
        add_index :comments, :post_id
    end
end
