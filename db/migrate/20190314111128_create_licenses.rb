class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses do |t|
      t.string :applicant
      t.integer :number_of_balls
      t.integer :duration

      t.timestamps
    end
  end
end
