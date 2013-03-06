class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :contact_person
      t.string :contact_number

      t.timestamps
    end
  end
end
