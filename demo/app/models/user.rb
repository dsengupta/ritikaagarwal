class User < ActiveRecord::Base
   attr_accessible :name, :email,:password,:password_confirmation
has_secure_password

	has_many :microposts


validates :name, :presence =>true, :length => {:maximum =>10}
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence=> true, :format=> { :with=>VALID_EMAIL_REGEX },
:uniqueness=> true
validates :password, :presence=>true, :length=> { :minimum=> 6 }
validates :password_confirmation,:presence =>true
before_save { |user| user.email = email.downcase }
end