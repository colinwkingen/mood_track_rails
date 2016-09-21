class ProfilesController < ApplicationController

  def new
    @user = current_user
    @profile = Profile.new
    @profile.user_id = current_user.id
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    if @profile.save
      flash[:success] = "Profile Added"
      redirect_to  profiles_path
    else
      render :new
    end
  end



  private
  def profile_params
    params.require(:profile).permit(:name, :user_id)
  end

end
