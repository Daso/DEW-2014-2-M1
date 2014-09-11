class CreateUserBooks < ActiveRecord::Migration
  def change
    create_table :user_books do |t|

      t.timestamps
    end
  end
end
