module Admin
  class JobsController < ApplicationController
      before_action :set_job, only: %i[ show edit update destroy ]
    
      # GET /companies or /companies.json
      def index
        @jobs = Job.all
      end
    
      # GET /companies/1 or /companies/1.json
      def show
      end
    
      # GET /companies/new
      def new
        @job = Job.new
        @company = Company.find(params[:id])
      end
    
      # GET /companies/1/edit
      def edit
        @job = Job.find(params[:id])
        @company = Company.find(@job.company.id)
      end
    
      # POST /companies or /companies.json
      def create
        @job = Job.new(job_params)
    
        respond_to do |format|
          if @job.save
            format.html { redirect_to 'admin/'+@job.company.id.to_s , notice: "Job was successfully created." }
            format.json { render :show, status: :created, location: @job }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @job.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # PATCH/PUT /companies/1 or /companies/1.json
      def update
        respond_to do |format|
          if @job.update(job_params)
            format.html { redirect_to @job, notice: "Job was successfully updated." }
            format.json { render :show, status: :ok, location: @job }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @job.errors, status: :unprocessable_entity }
          end
        end
      end
    
      # DELETE /companies/1 or /companies/1.json
      def destroy
        @job.destroy
        respond_to do |format|
          format.html { redirect_to jobs_url, notice: "Job was successfully destroyed." }
          format.json { head :no_content }
        end
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_job
          @job = Job.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def job_params
          params.require(:job).permit(:content, :wage, :require, :status, :company_id,:benefits, :name)
        end
  end
end