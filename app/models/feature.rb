class Feature < ApplicationRecord
  belongs_to :modifier, :optional => true
  belongs_to :classifiable, :polymorphic => true
end
