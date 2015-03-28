class ReceiverController < ApplicationController
  before_filter :authenticate_receiver!
  layout 'receivers/default'
  before_filter :check_receiver_active

  expose(:current_account){
    if current_receiver
      current_receiver.organization
    end
  }
  private
  def check_receiver_active
    unless current_receiver.active
      flash[:notice]= t(:receiver_not_active)
      sign_out current_receiver
      redirect_to new_receiver_session_path
    end
  end
end



