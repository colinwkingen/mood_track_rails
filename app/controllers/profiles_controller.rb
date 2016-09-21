class ProfilesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = User.find(current_user)
    if @profile.save
      respond_to do |format|
        format.html { redirect_to root_url }
        format.js
      end
    else
      render :new
    end
  end



  private
  def profile_params
    params.require(:profile).permit(:name, :user_id)
  end

end
