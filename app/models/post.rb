class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    before_save {link.downcase!}
    validates :link, presence: true, length: {maximum: 255}
end
