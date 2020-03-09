#language: pt

Funcionalidade: Acessando empregados

Eu quero vizualizar os empregados cadastrados na api

@executa_get
Cenario: Vizualizar empregados

  Dado que eu faça um GET no endpoint empregados
  Entao o retorno dele será todos os empregados cadastrados
