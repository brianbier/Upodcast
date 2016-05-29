class Episode < ActiveRecord::Base
belongs_to :podcast

  #paperclip gem set up
  has_attached_file :episode_thumbnail, styles: { large: "1000x1000#", medium: "550x550#" }
  validates_attachment_content_type :episode_thumbnail, content_type: /\Aimage\/.*\Z/

end