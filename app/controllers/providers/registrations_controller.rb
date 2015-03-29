class Providers::RegistrationsController < Devise::RegistrationsController
  layout :choose_layout

  after_filter :add_organisation, only: :create
  def choose_layout
    if params[:action] == 'edit' or params[:action] =='update' or params[:action] =='change_password'
      'providers/default'
    else
     'layouts/public'
    end
  end

  private

  def add_organisation
    organization = Organization.create()
    current_provider.is_owner = true
    current_provider.organization_id = organization.id
    current_provider.save
  end

  def sign_up_params
    allow = [:first_name, :last_name, :email, :password, :password_confirmation]
      params.require(resource_name).permit(allow)
  end
end
