class Recivers::RegistrationsController < Devise::RegistrationsController
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
    current_reciver.is_owner = true
    current_reciver.organization_id = organization.id
    current_reciver.save
  end
end
