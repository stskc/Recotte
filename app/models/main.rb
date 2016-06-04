class Main < ActiveRecord::Base
  validates :artist, presence: true, length: { maximum: 50 }
  validates :song, presence: true, length: { maximum: 50 }
  validates :youtube, presence: true, length: { maximum: 11 }

  scope :unviewed, -> { where(viewed: false) }

  def self.reset_viewed
    where(viewed: true).update_all(viewed: false)
  end

  def viewed!
    update_attribute(viewed: true)
  end
end
