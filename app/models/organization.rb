class Organization < ActiveRecord::Base
  has_many :recivers
  has_many :providers
end

