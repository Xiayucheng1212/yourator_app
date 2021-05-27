class AdminController < ApplicationController
    def index
        redirect_to action: "show", id: 6
    end

    def show
        @company = Company.find(params[:id])
    end
end
