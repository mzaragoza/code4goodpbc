class Receipt < ActiveRecord::Base

  belongs_to :receiver
  belongs_to :provider

end
