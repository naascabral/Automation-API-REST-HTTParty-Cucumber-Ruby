#language: pt

Funcionalidade: Criando novo funcionário

Eu desejo criar novo funcionario na empresa

@post_empregado
Cenario: Criar novo empregado na empresa

  Dado que eu passe os dados do empregado
  Quando eu realizo a açao do post na api
  Entao um novo empregado é cadastrado com sucesso na base
