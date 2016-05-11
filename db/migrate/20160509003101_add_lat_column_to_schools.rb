class AddLatColumnToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :lat, :decimal
  end
end
