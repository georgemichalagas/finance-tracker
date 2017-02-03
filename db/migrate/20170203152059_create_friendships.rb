class CreateFriendships < ActiveRecord::Migration
  belongs_to :user
  belongs_to :friend, :class_name => 'User'

  def change
    create_table :friendships do |t|
      t.belongs_to :user
      t.belongs_to :friend, class: 'User'
      t.timestamps null: false
    end
  end
end
