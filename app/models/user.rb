class User < ActiveRecord::Base
  # Authlogic
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
end
