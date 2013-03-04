class WelcomeController < ApplicationController
	def index
		@posts = Post.all
	end

	def publications
	end

	def links
	end
	
end
