class Article < ApplicationRecord
    include Visibility
    belongs_to :user
    has_many :comments, dependent: :destroy
end
