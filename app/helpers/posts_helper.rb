module PostsHelper
	def likes_id(post)
		'likes-count-' + post.id.to_s
	end

	def like_button_text(post)
		# Make sure the button reads correctly on load
		if post.likes.pluck(:user_id).include? @user.id 
			'Dislike' 
		else 
			'Like' 
		end
	end
end
