# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
  user = User.create!(email: 'user@gmail.com', password: '123456', password_confirmation: '123456')
  ProfileUser.create!(user_id: 1, profile_id: 2)
  # company = Company.create!(name: 'Company Tech', url: 'https://google.com', user_id: user.id)
  # company.logo.attach(io: File.open("#{Rails.root}/spec/fixtures/images/logo-tech.jpeg"), filename: 'logo-tech.jpeg')
end

if Profile.count == 0
  puts "Populando tabela profile..."
  Profile.create!(name:'Anunciante')
  Profile.create!(name:'Candidato')
  puts "Profiles criados!"
end

# if Position.count == 0
#   cities_and_states = [['CE', 'Fortaleza'], ['SP', 'Sao Paulo'], ['RJ', 'Rio de Janeiro']]
#   5.times do |t|
#     city_and_state = cities_and_states.sample
#     Position.create!(
#       name: "Vaga #{t}", career: (0..6).to_a.sample, contract: (0..2).to_a.sample, remote: true, publish: true,
#       state: city_anst, city: city_and_state.last, company_id: Company.last.id,
#       description: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae fuga, nobis culpa quidem ipsum, quod exercitationem similique aliquam dolorem veniam praesentium! Adipisci ad deserunt illo, ab omnis distinctio quae at.',
#       summary: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vitae fuga, nobis culpa quidem ipsum, quod exercitationem similique aliquam dolorem veniam praesentium! Adipisci ad deserunt illo, ab omnis distinctio quae at.'
#     )
#   end
# endd_state.fir