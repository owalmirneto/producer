class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :token_authenticatable, :validatable

  validates_presence_of :full_name

  has_many :posts

  def first_name
    self.full_name.split.first
  end

  def last_name
    self.full_name.split.last
  end
end

