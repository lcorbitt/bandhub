class User < ApplicationRecord
  after_create :assign_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  rolify

  def assign_default_role
    self.add_role(:member) if self.roles.blank?
  end     
end
