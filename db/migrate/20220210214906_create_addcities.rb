class CreateAddcities < ActiveRecord::Migration[7.0]
  def change
    create_table :addcities do |t|
      add_reference :doctors, :city     
      add_reference :patients, :city    
      add_reference :appointments, :city
      t.timestamps
    end
  end
end
