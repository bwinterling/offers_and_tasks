# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    name "MyString"
    description "MyText"
    terms "MyText"
    image_url "MyString"
    expiration "2014-02-28 11:08:57"
  end
end
