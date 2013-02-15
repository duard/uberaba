class ProfileController < ApplicationController

  before_filter :get_user

  def get_user
    @user =  current_user #User.find(params[current_user.profile])
  end

  def index
    @profile =  @user.profile
  end
  # generate new-profile form
  def new
    @user.profile = Profile.new
    @profile = @user.profile
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(params[:profile])
    @profile.save!
  end

  def edit
    @profile = @user.profile
  end

  def update

      @profile = @user.profile

      respond_to do |format|
        if @profile.update_attributes(params[:profile])
          flash[:notice] = 'Profile was successfully updated.'
          # format.html { redirect_to(@profile) }
          format.html { redirect_to(edit_user_profile_path(@user, @profile)) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
        end
      end

  end

  def dashboard
  end

end
