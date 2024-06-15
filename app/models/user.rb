class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password


    def format_properties_for_frontend
        return {
            firstName: self.f_name,
            lastName: self.l_name,
            username: self.username,
            email: self.email,
            phoneNumber: self.phone_number,
        }
    end

end
