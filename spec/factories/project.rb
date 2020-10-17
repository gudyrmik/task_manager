FactoryBot.define do

  factory :project do
    title { "Project title" }
    sequence :position do |n|
      "#{n}"
    end
  end

end
