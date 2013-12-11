class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, presence: true, length: { maximum: 15 }
  validates :lastname, presence: true, length: { maximum: 20 }
  before_save { |user| user.firstname = firstname.capitalize }
  before_save { |user| user.lastname = lastname.capitalize }
end
