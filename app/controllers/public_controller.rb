class PublicController < ApplicationController
  before_filter :redirect_if_logged_in

  layout 'layouts/public'

  private
  def redirect_if_logged_in
    if current_provider
      redirect_to providers_root_path
    elsif current_receiver
      redirect_to receivers_root_path
    end
  end

end
