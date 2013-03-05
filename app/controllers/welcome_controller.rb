class WelcomeController < ApplicationController
	def index
		@posts = Post.order('created_at desc').limit(2)
	end

	def publications
	end

	def links
	end

end
