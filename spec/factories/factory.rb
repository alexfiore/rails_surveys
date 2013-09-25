FactoryGirl.define do

  factory :survey do
    sequence(:title) {|n| "title #{n}" }
    content "Who wants to take our awesome test survey? It's going to be amazing."
  end

  factory :question do
    content "Who loves Dev Bootcamp?"
  end

  factory :choice do
    content "Everyone"
    question
  end

  factory :response do
    choice
  end

end
