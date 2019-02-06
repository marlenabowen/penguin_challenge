FactoryBot.define do
  factory :penguin do
    sequence :species do |n|
      "#{n}"
    end
    after(:build) do |penguin|
      penguin.image.attach(
        io: File.open(Rails.root.join('spec', 'factories', 'images', 'Adelie.jpg')),
        filename: 'Adelie.jpg',
        content_type: 'image/jpeg')
    end
  end
end
