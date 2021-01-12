class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def user_says_comment
    "#{self.user.username} says: #{self.content}"
  end

end
