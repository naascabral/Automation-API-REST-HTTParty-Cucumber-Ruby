Dado("que eu faça um GET no endpoint empregados") do
  @get_empregados = HTTParty.get 'http://dummy.restapiexample.com/api/v1/employees'
end

Entao("o retorno dele será todos os empregados cadastrados") do
  puts @get_empregados.body
  puts @get_empregados.code
  expect(@get_empregados.code).to eq 200

end
