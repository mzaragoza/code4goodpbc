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
    organisation = Organisation.create()
    current_provider.is_owner = true
    current_provider.organisation_id = organisation.id
    current_provider.save
  end
end
