class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end
  def new
    # create an instance of the Job class in an @instance variable.
    # instance variables have @ symbols and have a scope throughout the application
     @job = Job.new
  end
  def create
    Job.create(job_params)
    # helper method to redirect to the /jobs_path
    redirect_to jobs_path
    # tell create to render the index html
    # render :index
  end

  private # beginning of private methods -- anything below this line will be private

# strong parameters to ignore malicious form entries
# whitlisting/specifying the fields that we want!

  def job_params
    params.require(:job).permit(:title, :description)
  end

end
