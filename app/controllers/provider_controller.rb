class ProviderController < ApplicationController
  before_filter :authenticate_provider!
  layout 'providers/default'
  before_filter :check_provider_active

  expose(:current_account){
    if current_provider
      current_provider.organization
    end
  }

  private
  def check_provider_active
    unless current_provider.active
      flash[:notice]= t(:provider_not_active)
      sign_out current_provider
      redirect_to new_provider_session_path
    end
  end
end


