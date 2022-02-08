class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, , :trackable and :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable 
end
