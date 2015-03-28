class Providers::RegistrationsController < Devise::RegistrationsController

  layout :choose_layout

  def choose_layout
    if params[:action] == 'edit' or params[:action] =='update' or params[:action] =='change_password'
      'providers/default'
    else
      'providers/login'
    end
  end


end
