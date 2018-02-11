FactoryBot.define do
  factory :post do
    after(:build) do |post, evaluator|
      3.times { post.post_revisions << FactoryBot.build(:post_revision) }
    end
  end
end
