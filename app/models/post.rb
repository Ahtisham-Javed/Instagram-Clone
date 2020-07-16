class Post < ApplicationRecord
  default_scope { order created_at: :desc }
  scope :active, -> { where(active: true) }

  mount_uploader :image, ImageUploader
  
  belongs_to :account
  has_many :likes
  
  def total_likes
    0
  end
end
