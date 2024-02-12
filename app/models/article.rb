class Article < ApplicationRecord 
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    has_one_attached :thumbnail
    validates :title, presence: true, length: { minimum: 10, maximum: 120 }
    validates :description, length: { maximum: 250 }
    validates :content, presence: true
    attribute :views, :integer, default: 0

    has_rich_text :content
end