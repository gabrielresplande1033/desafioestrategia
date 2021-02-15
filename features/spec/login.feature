#language: pt

@login_tests
Funcionalidade: Realizar login
    Como usuário do sistema
    Eu quero realizar requisições na api
    Parame autenticar no sistema

@efetuar_login
Esquema do Cenário: Efetuar autenticação no sistema
    Dado que possuo credenciais '<email>' e '<password>'
    Quando eu realizar a requisição para fazer login
    Então valido o status code 200
    E valido o contrato da API para o login

    Exemplos:
    | email                     |  password  |
    | gbl_marcelino@hotmail.com | teste652   |
    | joao.da.silva@hotmail.com | 12356      |  
    | mariaa@hotmail.com        | 88888889   |     
    | pedro.sampaio@hotmail.com | f%4$-02)+_ |

@efetuar_login_invalido
Esquema do Cenário: Efetuar autenticação com campo inválido
    Dado que possuo credenciais '<email>' e '<password>'
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:
    | email                     | password      | message            |
    | naoexiste@gmail.com       | teste652      | "User not found"   | 
    | gbl_marcelino@hotmail.com | senhainvalida | "Invalid password" |

@efetuar_login_campo_vazio
Esquema do Cenário: Efetuar login com campo vazio
    Dado que possuo credenciais '<email>' e '<password>'
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:
    | email                     | password | message            |
    | ""                        | teste652 | "User not found"   |
    | gbl_marcelino@hotmail.com | ""       | "Invalid password" |

@efetuar_login_campo_nulo
Esquema do Cenário: Efetuar login com campo nulo
    Dado que possuo credenciais '<email>' e '<password>'
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:
    | email                     | password | message            |
    |                           | teste652 | "User not found"   |
    | gbl_marcelino@hotmail.com |          | "Invalid password" |