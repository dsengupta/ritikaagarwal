class StaticPagesController < ApplicationController

  def home
    if signed_in?
<<<<<<< HEAD
      @micropost =current_user.microposts.build
      @feed_items =current_user.feed.paginate(:page=>params[:page])
=======
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(:page=>params[:page])
>>>>>>> 06a0fda27c98ed5ef92e9b30dc910c0c5b456ef3
    end
  end

  def help
  end

  def about
  end

def contact
end

end
