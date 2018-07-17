class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :validatable
  # Removed following modules from default:
  # :registerable, :recoverable, :rememberable, :trackable
end
