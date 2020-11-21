class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favomicropost, class_name: "Micropost"
end
