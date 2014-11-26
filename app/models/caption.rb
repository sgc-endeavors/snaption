class Caption < ActiveRecord::Base
  belongs_to :medium

  validates :title, length: {minimum: 8, message: "Caption must be at least 8 characters in length"}
end