class Main < ActiveRecord::Base
  validates :artist, presence: true, length: { maximum: 50 }
  validates :song, presence: true, length: { maximum: 50 }
  validates :youtube, presence: true, length: { maximum: 11 }
end
