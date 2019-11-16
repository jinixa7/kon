class JobapiController < ApplicationController
  def index
    @number16 = JobapiController.find(16)
	@number_all = JobapiController.all_jobs
  end
  
  private
    include HTTParty
	base_uri "http://jobwater.herokuapp.com"
	def self.find(id)
		get("/api/jobs/#{id}")
	end
	
    def self.all_jobs
		get("/api/jobs")
    end	
end


