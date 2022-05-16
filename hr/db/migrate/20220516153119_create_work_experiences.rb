class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences do |t|
      t.string :experience
      t.string :duration
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
