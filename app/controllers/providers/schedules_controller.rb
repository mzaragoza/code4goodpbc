class Providers::SchedulesController < ProviderController

  expose(:schedules){ current_account.schedules }
  expose(:event){
    if params[:action] == 'new'
      current_account.schedules.new()
    elsif params[:action] == 'create'
      Event.new(params[:event])
    elsif params[:action] == 'show' || params[:action] == 'edit'
      Event.find(params[:id])
    end
  }
end

