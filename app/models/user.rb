class User < ActiveRecord::Base

    has_secure_password
    has_many :reviews

    def authenticate_with_credentials(email, password)
        if self.email == email.strip.downcase && self.authenticate(password)
            self
        else
            nil
        end
    end

    validates :email, uniqueness: { case_sensitive: false }
    validates :password, length: { minimum: 4 }
end
