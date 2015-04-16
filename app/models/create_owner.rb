class CreateOwner < ActiveRecord::Base
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
#attr_accessible :name, :floor, :block, :flat_number, :bussiness_name, :username, :password, :image, :carpet_area, :builtup_area, :mezzanine, :water_connection, :electricity, :owner, :month_from, :month_to, :per_month_rent 
#validates :name, :presence => {:message => 'Name cannot be blank.'}, :allow_blank => true, :length => {:minimum => 2, :maximum => 40}
#validates :floor, numericality: true
#validates :block, presence: true
#validates :flat_number, presence: true, uniqueness: true, numericality: true
#validates :business_name, presence: true
#validates :username, presence: true
#validates :carpet_area, numericality: true
#validates :builtup_area, numericality: true
#validates :mezzanine, presence: true
#validates :water_connection, presence: true
#validates :electricity, presence: true
#validates :ownership, presence: true
#validates :month_from, presence: true
#validates :month_to, presence: true
#validates :per_month_rent, numericality: true
<<<<<<< HEAD
=======
=======

>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3

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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
>>>>>>> e7c0a9867ecf4d8dbb39fbffbbb79b2930d769d3
end
