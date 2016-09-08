class User < ActiveRecord::Base
  # Asso
  belongs_to :division

  # Authlogic
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
end
