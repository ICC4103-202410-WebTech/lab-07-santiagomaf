class AddReferencePostToPost < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :posts, foreign_key: true
  end
end
