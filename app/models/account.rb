class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :lockable, :timeoutable

  has_and_belongs_to_many :roles
  belongs_to :department

  validates :name, presence: true

  def has_role?(role_name)
    roles.exists?(role_name: role_name)
  end

  def admin?
    has_role?('Администратор портала')
  end
end
