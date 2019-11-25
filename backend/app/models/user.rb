class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist


  has_many :user_projects, dependent: :destroy
  has_many :projects, through: :user_projects, dependent: :destroy

  has_many :user_resources, dependent: :destroy
  has_many :resources, through: :user_resources

  validates :github_handle, presence: true
  validates :github_handle, uniqueness: true
end
