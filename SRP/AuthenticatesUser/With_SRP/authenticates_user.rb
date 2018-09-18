class AuthenticatesUser
  def authenticate(email, password)
    if MatchesPasswords.new(email, password).matches?
     do_some_authentication
    else
      raise NotAllowedError
    end
  end
end

class MatchesPasswords
  def initialize(email, password)
     @email = email
     @password = password
  end

  def matches?
     user = find_from_db(:user, @email)
    user.encrypted_password == encrypt(@password)
  end
end
