class Organization < ActiveRecord::Base
  has_many :receivers
  has_many :providers
  has_many :schedules

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def full_street_address
    (self.address + ' ' + self.city + ' ' + self.state + ' ' + self.zip)
  end
end

