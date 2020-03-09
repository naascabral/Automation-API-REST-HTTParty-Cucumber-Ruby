#language: pt

Funcionalidade: Deletando registros

Eu quero deletar um empregado

@empregado_delete
Cenario: Deletar empregado com sucesso

  Dado que eu passe o id de um empregado
  Entao o empregado e deletado da base com sucesso
