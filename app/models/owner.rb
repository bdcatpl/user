class Owner < ActiveRecord::Base
<<<<<<< HEAD

attr_accessor :password
validates_confirmation_of :password
before_save :encrypt_password

def encrypt_password
  self.password_salt = BCrypt::Engine.generate_salt
  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
end

def self.authenticate(email, password)
 owner = Owner.where(email: email).first
 if owner && owner.password_hash == BCrypt::Engine.hash_secret(password, owner.password_salt)
   owner
 else
   nil
 end
end

end
=======
before_create { generate_token(:auth_token) }
  attr_accessible :email, :password, :password_confirmation
  has_secure_password


validates_presence_of :email
validates_presence_of :password, :on => :create
validates_format_of :password, 
                    :with => /^[A-Za-z0-9 ~ ` ! @ # $ % ^ & * ( ) - _ = + \ | ; : ' " , . ? \/ < > \[ \] \{ \} ]*$/, 
                    :message => "should only contain letters, numbers, or .-_@"

validates_length_of :password, :within => 8..15
validates_confirmation_of :password
validates_uniqueness_of :email






  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Owner.exists?(column => self[column])
  end
end




 
>>>>>>> 5c38b89a3e635703a230a79470f46d5a9217ccf2
