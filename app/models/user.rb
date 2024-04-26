class User < ApplicationRecord
    has_many :posts
    before_validation :name_present
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum: 6 }

    private

    def name_present
        add.errors(:name, "Name is Blank") if name.blank?
    end

end