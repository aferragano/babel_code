class OriginalSnippet < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
	belongs_to :language
	has_many :reply_snippets
	validates :title, :snippet, presence: true
  before_save :add_slug

  def add_slug
    self.slug = self.title.parameterize
  end
end

