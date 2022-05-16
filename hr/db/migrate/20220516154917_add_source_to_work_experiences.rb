class AddSourceToWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :work_experiences, :source, :string
  end
end
