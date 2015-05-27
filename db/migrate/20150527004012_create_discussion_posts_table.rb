class CreateDiscussionPostsTable < ActiveRecord::Migration
  def change
    create_table :discussion_posts do |t|
    	# t.integer :id, null: false
    	t.integer :user_id, null: false
    	t.text :content, null: false
    	t.timestamps
    end
  end
end
