class User < ActiveRecord::Base
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :tasks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :trackable, :jwt_authenticatable, jwt_revocation_strategy: self
end
