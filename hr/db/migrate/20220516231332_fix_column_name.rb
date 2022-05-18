class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :work_experiences, :duration, :startdate
    rename_column :educations, :name, :school
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
