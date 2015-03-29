class Providers::ProvidersController < ProviderController
  before_filter :check_password_submitted, :only => :update

  expose(:providers){ current_account.providers }
  expose(:provider, attributes: :provider_params)

  def create
    if provider.save
      flash[:notice] = t(:staff_was_successfully_created)
      redirect_to providers_providers_path
    else
      render :new
    end
  end
  def update
    if provider.save
      flash[:notice] = t(:staff_was_successfully_updated)
      redirect_to providers_providers_path
    else
      render :edit
    end
  end

  def notify_receivers
    render false
  end


  private

  def check_password_submitted
    if params[:provider][:password].blank?
      params[:provider].delete("password")
      provider.updating_password = false
    else
      provider.updating_password = true
    end
  end

  def provider_params
    params.require(:provider).permit(
      :email,
      :first_name,
      :last_name,
      :is_admin,
      :password,
      :password_confirmation,
    )
  end
end
