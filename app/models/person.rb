class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,      presence: true
  validates :email,     presence: true
  validates :telephone, presence: true
  validates :cnpj,      presence: true
  validates_uniqueness_of :email
end
