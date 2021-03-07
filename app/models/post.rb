class Post < ApplicationRecord
  validates :title, :image_url, :content, presence: true

  before_save :spoiler
  def spoiler
    self.content = (self.content.downcase).gsub("spoiler","")
  end
end
