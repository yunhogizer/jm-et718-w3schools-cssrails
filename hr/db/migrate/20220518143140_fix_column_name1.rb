class FixColumnName1 < ActiveRecord::Migration[5.0]
  def change
    rename_column :educations, :name, :school
  end
end
