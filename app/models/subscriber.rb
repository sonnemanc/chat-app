class Subscriber < ApplicationRecord
    belongs_to :subscribable, :polymorphic => true
end
