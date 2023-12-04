class Admin < ApplicationRecord
  has_many :contacts
  has_many :skills
  has_many :projects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable




end
