class AddCompanyIdToJobs < ActiveRecord::Migration[6.1]
  def change
    add_index :jobs, :company_id
  end
end
