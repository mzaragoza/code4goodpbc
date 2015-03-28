class Organization < ActiveRecord::Base
  has_many :receivers
  has_many :providers
end

