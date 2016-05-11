class User < ActiveRecord::Base
  has_secure_password
  geocoded_by :postcode,
    :latitude => :lat, :longitude => :lon
    after_validation :geocode, if: :postcode_changed_or_present?

  private
    def postcode_changed_or_present?
      postcode_changed? || postcode.present?
    end

end
