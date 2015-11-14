class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.integer :cost
      t.integer :time
      t.text :description

      t.timestamps null: false
    end
  end
end
