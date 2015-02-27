class CreateOwner < ActiveRecord::Base


mount_uploader :image, PictureUploader

attr_accessor :password
validates_confirmation_of :password
before_save :encrypt_password

def encrypt_password
  self.password_salt = BCrypt::Engine.generate_salt
  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
end

def self.authenticate(username, password)
 create_owner = CreateOwner.where(username: username).first
 if create_owner && create_owner.password_hash == BCrypt::Engine.hash_secret(password, create_owner.password_salt)
   create_owner
 else
   nil
 end
end

end
