class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.text :content
      t.text :concept
      t.text :media
      t.text :benefits

      t.timestamps
    end
  end
end
