class DiscussionPostsController < ApplicationController
	before_action :authenticate_user!

	def index
		@all_discussion_posts = DiscussionPost.all
	end

	def show
	end

	def create
	end

	def new
	end

	def edit
		# GET 
	end

	def destroy
	end

	def update
		# POST
	end
end