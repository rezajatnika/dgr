FactoryGirl.define do
  factory :marketing, class: Division do |f|
    f.name 'Marketing'
  end

  factory :sales, class: Division do |f|
    f.name 'Sales'
  end
end
