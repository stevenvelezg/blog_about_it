class User < ApplicationRecord
  def full_name
    "#{fname} #{lname}".strip
  end
  has_many :posts
  has_many :comments
end
