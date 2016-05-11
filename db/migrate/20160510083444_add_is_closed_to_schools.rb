class AddIsClosedToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :is_closed, :boolean
  end
end
