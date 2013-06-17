FactoryGirl.define do
  factory :tournament do
    occurs_at Time.now + 1.day
    game 'Warhammer 40k'
    address '60 Sowams Rd, Barrington, RI 02806'
  end
end
