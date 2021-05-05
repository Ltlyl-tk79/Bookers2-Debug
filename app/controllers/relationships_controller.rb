class RelationshipsController < ApplicationController
  def create
    following == current_user.follow(:id)
    if following.save
      
  end
  
  def destroy
  end
end

