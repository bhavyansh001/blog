class Article < ApplicationRecord
    include Visibility
    belongs_to :user
end
