class Providers::OrganizationsController < ProviderController
  expose(:organization){ current_account }

  def update
    if organization.update_attributes(organization_params)
      flash[:notice] = t(:organization_was_successfully_updated)
      redirect_to providers_root_path
    else
      render :edit
    end
  end

  private

  def organization_params
    params.require(:organization).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
    )
  end
end
