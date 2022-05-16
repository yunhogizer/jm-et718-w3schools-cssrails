class AddEnddateToWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :work_experiences, :enddate, :string
  end
end
