class DiscussionPostsController < ApplicationController
	before_action :authenticate_user!

	def index
		@all_discussion_posts = DiscussionPost.includes(:user).all
	end

	def show
	end

	def create # save to db
		@post = DiscussionPost.new(discussion_post_params)
		@post.user_id = current_user.id

		if @post.save
			redirect_to action: 'index'
		end
	end

	def new
		@post = DiscussionPost.new
	end

	def edit
		# GET 
	end

	def destroy
	end

	def update
		# POST
	end

	private

	def discussion_post_params
		params.require(:discussion_post).permit(:content)
	end
end