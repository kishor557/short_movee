class Query < ActiveRecord::Base
  validates :email, :subject, :content, presence: true
end
