class CreateRegisteredApplications < ActiveRecord::Migration
  def change
    create_table :registered_applications do |t|
      t.string :url
      t.string :name

      t.timestamps null: false
    end
  end
end
