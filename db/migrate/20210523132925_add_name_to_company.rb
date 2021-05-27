class AddNameToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :name, :string
    add_column :jobs, :name, :string
  end
end
