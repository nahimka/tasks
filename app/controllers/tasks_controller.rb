class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  	Rails.logger.debug "Halabalal tasks: #{@tasks.inspect}"
  end
end
