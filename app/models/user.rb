class User < ApplicationRecord

  # this is a class method
  def self.check(data)
  # can be accessed by User.from_omniauth

   user = User.find_by(email: data['email'])

   

   if user.blank?
   	user = User.create(
   			email: data['email'],
   			name:data['name'],
   			confirmed_at: Time.now
   		)
   end

   if user.confirmed_at.blank?
   	user.confirmed_at = Time.now
   	user.save
   end

   user.set_auth_token
   return user

  end


  # for creating an auth token for a user to login using API
  def set_auth_token
    self.auth_token = SecureRandom.uuid

    self.save

    # ideally, check the validity of the auth token and then either return a new one or the same if valid

  end


# assignment
  def remove_auth_token_validity
  	
  end
end
