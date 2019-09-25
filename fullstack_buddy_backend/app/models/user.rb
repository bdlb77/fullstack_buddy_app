class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist


  has_many :project_users, dependent: :destroy
  has_many :projects, through: :project_users, dependent: :destroy

  has_many :resource_users, dependent: :destroy
  has_many :resources, through: :resource_users
end
