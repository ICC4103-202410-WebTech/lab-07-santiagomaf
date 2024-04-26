class AddReferenceTagToPost < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :tag, foreign_key: true
  end
end
