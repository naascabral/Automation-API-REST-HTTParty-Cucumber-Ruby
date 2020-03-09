Dado("que eu passe os dados do empregado") do
  @body = {
    "name": Faker::Name.name,
    "salary": Faker::Number.number(digits: 4),
    "age": "23"
  }.to_json
end

Quando("eu realizo a açao do post na api") do
  @post_empregados = HTTParty.post 'http://dummy.restapiexample.com/api/v1/create',
    :body => @body,
    :headers => {
        "Content-Type" => 'application/json'
    }
end

Entao("um novo empregado é cadastrado com sucesso na base") do
  puts @post_empregados.body
  puts @post_empregados.code
  expect(@post_empregados.code).to eq 201
end
