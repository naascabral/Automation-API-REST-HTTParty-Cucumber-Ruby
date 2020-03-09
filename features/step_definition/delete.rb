Dado("que eu passe o id de um empregado") do
  @body_delete = {
    "id": 24
  }.to_json
  @delete = HTTParty.delete 'http://dummy.restapiexample.com/api/v1/delete/24',
    :body => @body_delete,
    :headers => {
      "Content-Type" => 'application/json'
    }
end

Entao("o empregado e deletado da base com sucesso") do
  puts @delete.body
  expect(@delete["id"]).to eq nil
end