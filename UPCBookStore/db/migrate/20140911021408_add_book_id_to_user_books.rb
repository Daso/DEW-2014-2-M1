class AddBookIdToUserBooks < ActiveRecord::Migration
  def change
    add_column :user_books, :book_id, :integer
	add_column :user_books, :user_id, :integer
  end
end
