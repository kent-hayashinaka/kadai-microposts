class ApplicationController < ActionController::Base
  include SessionsHelper
  
    private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_fav_microposts = user.fav_microposts.count
  end
  
  def fav_users_counts(micropost)
    @count_fav_users = micropost.fav_users.count
  end
end
