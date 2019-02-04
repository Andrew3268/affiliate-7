class BridgesController < ApplicationController

  def discountCode
  end

  def newly
    @post_side = Post.order("impressions_count DESC").limit(5)
    @blogs = Blog.all.order("created_at DESC").limit(1)
  end
  
end
