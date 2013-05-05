# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :content, :title
  validates :title, presence: true, length: { maximum: 70 }, uniqueness: { case_sensitive: false }
  validates :content, presence: true


  default_scope order: 'posts.created_at DESC'
end
