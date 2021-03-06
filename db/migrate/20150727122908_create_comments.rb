class CreateComments < ActiveRecord::Migration
    def change
        create_table :comments, id: :uuid do |t|
            t.integer :post_id
            t.text :body

            t.timestamps null: false
        end

        add_index :comments, :post_id
    end
end
