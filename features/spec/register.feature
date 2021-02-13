#language: pt

@register_tests
Funcionalidade: Realizar registro de usuários
Como usuário do sistema
Eu quero realizar requisições na api
A fim de realizar registro de usuários

@registrar_usuario
Cenário: Registrar novo usuário com dados válidos
    Dado que eu possuo nome, email e senha válidos para registrar um novo usuário
    Quando eu realizar a requisição para registrar um novo usuário
    Então valido o status code 200
    E valido os dados de retorno da response
    E valido o contrato da API

# @registrar_usuario_campo_invalido
# Esquema do Cenário: Registrar usuário com dados inválidos
#     Dado que eu deseje realizar uma requisição de registro com o campo <field> com valor <value> inválido
#     Quando eu realizar a requisição para registrar um novo usuário
#     Então valido o status code 400
#     E valido a mensagem de retorno “xxx-xxx-xxx”

#     Exemplos:
#     | field | value |
#     | name  | ""    |

@registrar_usuario_campo_vazio
Esquema do Cenário: Registrar usuário com campo vazio
    Dado que eu deseje realizar uma requisição de registro com o campo <field> vazio
    Quando eu realizar a requisição para registrar um novo usuário
    Então valido o status code <statuscode>
    E valido a mensagem de retorno <mensagem>

    Exemplos:
    | field      |statuscode|  mensagem      |        
    |   "name"   |   200    |  "OK"          |
    |   "email"  |   400    |  "Bad Request" |
    | "password" |   400    |  "Bad Request" |


@registrar_usuario_campo_nulo
Esquema do Cenário: Registrar usuário com campo vazio
    Dado que eu deseje realizar uma requisição de registro com o campo <field> nulo
    Quando eu realizar a requisição para registrar um novo usuário
    Então valido o status code <statuscode>
    E valido a mensagem de retorno <mensagem>

    Exemplos:
    | field      |statuscode|  mensagem      |        
    |   "name"   |   200    |  "OK"          |
    |   "email"  |   400    |  "Bad Request" |
    | "password" |   400    |  "Bad Request" |

@registrar_usuario_ja_existente
Cenário: Registrar usuário já cadastrado no sistema
    Dado que eu possua os dados de um usuário já criado
    Quando eu realizar a requisição para registrar um novo usuário
    Então valido o status code 400
    E valido o retorno "User Already Exists"
