class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  	Rails.logger.debug "Halabalal tasks: #{@tasks.inspect}"
  end

  def create
  	#render :text => params.inspect
  	Task.create(task_params)
  	redirect_to :back
  end	

  def task_params
  	params.require(:task).permit(:task)
  end

end
