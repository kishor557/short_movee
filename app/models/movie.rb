class Movie < ActiveRecord::Base
  
  validates :url, presence: true, uniqueness: true
  
  before_save :save_video_info
 
  def save_video_info
    puts "\n\n..$$$$...#{url}....\n"
    video = VideoInfo.new(url)
    self.available = video.available?
    self.video_id = video.video_id
    self.provider = video.provider
    self.title = video.title
    self.description = video.description
    self.duration = video.duration
    self.date = video.date
    self.thumbnail_small = video.thumbnail_small
    self.thumbnail_medium = video.thumbnail_medium
    self.thumbnail_large = video.thumbnail_large
    self.embed_url = video.embed_url
    self.embed_code = VideoInfo.new(url).embed_code(iframe_attributes: { width: 750, height: 500, "data-key" => "value" })
  end
end
