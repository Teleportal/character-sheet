class Race < ApplicationRecord
  has_many :character_pages
  has_many :subraces
  has_many :features, :as => :classifiable
end
