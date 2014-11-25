class Medium < ActiveRecord::Base

mount_uploader :s3_media_loc, MediaUploader

  has_many :captions
end