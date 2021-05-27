class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.text :content
      t.integer :status
      t.text :require
      t.text :benefits
      t.string :wage
      t.integer :company_id

      t.timestamps
    end
  end
end
