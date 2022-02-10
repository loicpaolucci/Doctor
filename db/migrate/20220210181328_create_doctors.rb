class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :last_name
      t.string :first_name
      t.string :zip_code
      #t.belongs_to :city, index: true
      t.string :specialty
      t.timestamps
    end
  end
end
