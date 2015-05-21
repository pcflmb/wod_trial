module PostsHelper
	def likes_id(post)
		'likes-count-' + post.id.to_s
	end

	def like_button_text(post)
		# Make sure the button reads correctly on load
		if post['user_liked'].to_i > 0
			'Dislike' 
		else 
			'Like' 
		end 
	end
end
