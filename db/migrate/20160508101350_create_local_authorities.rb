class CreateLocalAuthorities < ActiveRecord::Migration
  def change
    create_table :local_authorities do |t|
      t.text :name
    end
  end
end
