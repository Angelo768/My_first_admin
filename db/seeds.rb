# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "admin@example.com", password: "admin1234")

10.times do |car|
    Carro.create!(
        marca: Faker::Company.name,
        tipo: Faker::Company.industry,
        disponivel: Faker::Boolean.boolean
    )
end

10.times do |client|
    Cliente.create!(
        nome: Faker::Name.name,
        documento: Faker::ProgrammingLanguage.name,
        telefone: Faker::PhoneNumber.phone_number_with_country_code
    )

    Aluguel.create!(
        preco: Faker::Number.decimal(l_digits: 3, r_digits: 2),
        status: Faker::Boolean.boolean,
        data_retirada: Faker::Date.between(from: 2.days.ago, to: Date.today),
        data_devolucao: Faker::Date.between(from: 2.days.ago, to: Date.today),
        carro_id: client + 1,
        cliente_id: client + 1
    )

    Sinistro.create!(
        preco: Faker::Number.decimal(l_digits: 3, r_digits: 2),
        status: Faker::Boolean.boolean,
        tipo: Faker::Number.between(from: 1, to: 10),
        descrição: Faker::Lorem.paragraph(sentence_count: 2),
        aluguel_id: client + 1
    )
end

# sinistro 20200223165312
# aluguel 20200223164929