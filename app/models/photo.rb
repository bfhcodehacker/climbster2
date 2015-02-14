class Photo < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :caption, :presence => true
  validates :picture, :presence => true
  validates :img_credit, :presence => true 
end
