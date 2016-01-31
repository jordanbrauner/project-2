class RegistrationsController < Devise::RegistrationsController

  private

  # AM: +1 customizing Devise using a separate RegistrationsController.
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :photo_url)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :photo_url)
  end
end
