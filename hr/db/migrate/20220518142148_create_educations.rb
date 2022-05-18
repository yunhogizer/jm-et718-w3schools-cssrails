class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :startdate
      t.string :enddate
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
