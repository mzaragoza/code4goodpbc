class Receiver < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  belongs_to :organization

  def name
    full_name
  end

  def full_name
    (self.first_name + ' ' + self.last_name).titleize
  end

end
