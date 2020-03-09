Dado("que eu deseje alterar alguns dados de um empregado") do
  @nome_alterado = Faker::Name.name
  @salario_alterado = Faker::Number.number(digits: 4)
  @age_alterado = "30"
  
  @body_put = {
   
    "name": @nome_alterado,
    "salary": @salario_alterado,
    "age": @age_alterado

  }.to_json

  @put = HTTParty.put 'http://dummy.restapiexample.com/api/v1/update/4',
    :body => @body_put,
    :headers => {
      "Content-Type" => 'application/json'
    }
end

Entao("esse empregado devera ser atualizado com sucesso") do
  expect(@put.code).to eq 200
  puts @put.body
  puts @put.code
end