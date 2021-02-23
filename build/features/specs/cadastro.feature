# language: pt

@regressivo_cadastro
Funcionalidade: Cadastro de cliente
Como QA preciso garantir que o cadastro de clientes esteja funcionando corretamente.

@cadastro_valido
Esquema do Cenario: Cadastro com sucesso
    Dado que cliquei no botão para cadastrar um novo cliente
    Quando preencher os dados para um cadastro '<tipo>' e concluir
    Então devo visualizar a mensagem 'Perfeito cadastro realizado com sucesso'
    Exemplos:
        | tipo     |
        | Básico   |
        | Completo |  
