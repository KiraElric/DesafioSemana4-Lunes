class Post < ApplicationRecord
  validates :title, :image_url, :content, presence: true
end
