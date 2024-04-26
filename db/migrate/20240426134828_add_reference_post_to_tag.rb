class AddReferencePostToTag < ActiveRecord::Migration[7.1]
  def change
    add_reference :tags, :post, foreign_key: true
  end
end
