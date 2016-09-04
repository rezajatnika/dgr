FactoryGirl.define do
  factory :user do |f|
    f.email 'stock@dgr.com'
    f.password 'asdqwe123'
    f.password_confirmation 'asdqwe123'
  end
end
