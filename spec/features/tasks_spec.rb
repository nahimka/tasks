require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks" do
   it "display some tasks" do
   	@task = Task.create :task => 'go to office'
   	visit tasks_path
   	page.should have_content 'go to office'
   end

   it "creates a new task" do
   	visit tasks_path
   	fill_in 'Task', :with => 'go to lake'
   	save_and_open_page
   end

  end
end
