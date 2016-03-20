FactoryGirl.define do
  factory :token do
    expires_at "2016-03-20 12:17:02"
    user nil
    token "MyString"
  end
end
