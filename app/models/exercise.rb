class Exercise < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_rich_text :content
  has_rich_text :correction

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true
  

  ########## SCOPES  #############
  scope :feed_exercise, -> { order(created_at: :desc)}
  
  
  
  ########## SLUG  #############
  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
  
end
