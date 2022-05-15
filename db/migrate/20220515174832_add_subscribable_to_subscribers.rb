class AddSubscribableToSubscribers < ActiveRecord::Migration[7.0]
  def change
    add_reference :subscribers, :subscribable, polymorphic: true, null: false
  end
end
