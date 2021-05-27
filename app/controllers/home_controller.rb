class HomeController < ApplicationController
    def index
        @companies = Company.order("RANDOM()").limit(5)
        @jobs = Job.order("RANDOM()").limit(5)
    end
end
