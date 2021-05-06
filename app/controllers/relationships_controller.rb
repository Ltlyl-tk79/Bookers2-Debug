class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:follower_id])
    following = current_user(@user)
    following.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_back(fallback_location: root_path)
  end
end

