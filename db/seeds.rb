# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ species: 'Star Wars' }, { species: 'Lord of the Rings' }])
#   Character.create(species: 'Luke', movie: movies.first)
penguins = [
  {
    species: 'Adelie',
  },
  {
    species: 'Rockhopper',
  },
  {
    species: 'Emperor',
  },
  {
    species: 'Gentoo',
  },
  {
    species: 'Magellanic',
  },
  {
    species: 'Galapagos',
  },
]

penguins.each do |penguin|
  penguin = Penguin.find_or_create_by(species: penguin[:species])
  directory_name = File.join(Rails.root, 'db', 'seed', "#{penguin[:species].downcase}", "*")

  Dir.glob(directory_name).each do |filename|
    if !penguin.image.attached?{|i| i.filename == filename}
      penguin.image.attach(io: File.open(filename), filename: filename.split("/").pop)
      sleep 1
    end
  end
end

