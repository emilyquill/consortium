# == Schema Information
#
# Table name: schools
#
#  id                     :integer          not null, primary key
#  local_authority_id     :integer
#  school_name            :text
#  address_street         :text
#  address_line_two       :text
#  address_line_three     :text
#  address_town           :text
#  address_postcode       :string
#  telephone_number       :string
#  pending_closure        :boolean
#  school_type            :text
#  school_sub_type        :text
#  is_primary             :boolean
#  is_secondary           :boolean
#  is_post_16             :boolean
#  age_lowest             :integer
#  age_highest            :integer
#  gender                 :text
#  sixth_form_gender      :text
#  religious_denomination :text
#  admission_policy       :text
#

class School < ActiveRecord::Base
  belongs_to :local_authority
  has_many :school_results
  geocoded_by :address_postcode,
    :latitude => :lat, :longitude => :lon
  # after_validation :geocode
end
