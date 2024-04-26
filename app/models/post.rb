class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :parent_post, class_name: 'Post', optional: true
    has_many :child_posts, class_name: 'Post', foreign_key: 'parent_post_id', dependent: :destroy

    validates :title, presence: true
    validates :content, presence: true
    validates :user_id, presence: true
    validates :answers_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0}


    
    
end