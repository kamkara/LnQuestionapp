class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_rich_text :content
  has_rich_text :correction


  scope :feed_exercise, -> { order(created_at: :desc)}

  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
  
end
