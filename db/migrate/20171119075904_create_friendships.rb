class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :friend, class: 'User', index: true
      t.timestamps null: false
    end
  end
end
