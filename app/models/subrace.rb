class Subrace < ApplicationRecord
  belongs_to :race
  has_many :features, :as => :classifiable
end
