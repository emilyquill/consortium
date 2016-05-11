class AddLonColumnToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :lon, :decimal
  end
end
