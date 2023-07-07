class UserController < Devise::RegistrationsController
  
  def create
    super do |user|
      user.create_default_profile(params[:user][:profile_id])
    end
  end

end
  