# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  name              :string
#  email             :string
#  crypted_password  :string
#  password_salt     :string
#  persistence_token :string
#  role              :integer
#  division_id       :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class User < ActiveRecord::Base
  # Asso
  belongs_to :division

  # Authlogic
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
end
