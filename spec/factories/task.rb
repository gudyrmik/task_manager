FactoryBot.define do

  factory :task do
    title { "Task title" }
    description { "Task description" }
    is_done { false }
  end

end
