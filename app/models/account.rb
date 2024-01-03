class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, :lockable, :timeoutable

  belongs_to :role
  belongs_to :department
  has_many :secure_records
  has_many :notes

  validates :name, presence: true

  def admin?
    role.name == "Администратор"
  end
end
