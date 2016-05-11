class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.references :local_authority, index: true, foreign_key: true
      t.text :school_name
      t.text :address_street
      t.text :address_line_two
      t.text :address_line_three
      t.text :address_town
      t.string :address_postcode
      t.string :telephone_number
      t.boolean :pending_closure
      t.text :school_type
      t.text :school_sub_type
      t.boolean :is_primary
      t.boolean :is_secondary
      t.boolean :is_post_16
      t.integer :age_lowest
      t.integer :age_highest
      t.text :gender
      t.text :sixth_form_gender
      t.text :religious_denomination
      t.text :admission_policy
    end
  end
end
