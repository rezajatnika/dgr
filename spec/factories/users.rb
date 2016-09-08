FactoryGirl.define do
  factory :user do |f|
    f.name 'Mukidi'
    f.email 'mukidi@dgr.com'
    f.password 'asdqwe123'
    f.password_confirmation 'asdqwe123'
    f.role 1
    association :division, factory: :sales
  end
end
