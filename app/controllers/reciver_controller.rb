class ReciverController < ApplicationController
  before_filter :authenticate_reciver!
  layout 'recivers/default'
  before_filter :check_reciver_active

  expose(:current_account){
    if current_reciver
      current_reciver.organization
    end
  }
  private
  def check_reciver_active
    unless current_reciver.active
      flash[:notice]= t(:reciver_not_active)
      sign_out current_reciver
      redirect_to new_reciver_session_path
    end
  end
end



