#language: pt

@login_tests
Funcionalidade: Realizar login
Como usuário do sistema
Eu quero realizar requisições na api
A fim de me autenticar no sistema

@efetuar_login
Esquema do Cenário: Efetuar autenticação no sistema
    Dado que possuo credenciais '<email>' e '<password>' válidas
    Quando eu realizar a requisição para fazer login
    Então valido o status code 200
    E valido o contrato da API para o login

    Exemplos:

    |       email               |  password  |
    | gbl_marcelino@hotmail.com | teste652   |
    | joao.da.silva@hotmail.com |  12356     |  
    |    mariaa@hotmail.com     |  88888889  |     
    | pedro.sampaio@hotmail.com | f%4$-02)+_ |

@efetuar_login_invalido
Esquema do Cenário: Efetuar autenticação com campo inválido
    Dado que eu possuo as credenciais para login com o campo <field> com valor <value> inválido
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:

    | field      |  value                 |    message        |
    | "email"    |  "naoexiste@gmail.com" | "User not found"  | 
    | "password" |  "senhainvalida"       | "Invalid password"|

@efetuar_login_campo_vazio
Esquema do Cenário: Efetuar login com campo vazio
    Dado que eu possuo as credenciais para login com o campo <field> vazio
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:

    | field      |  message          |        
    |   "email"  | "User not found"  |
    | "password" | "Invalid password"|

@efetuar_login_campo_nulo
Esquema do Cenário: Efetuar login com campo nulo
    Dado que eu possuo as credenciais para login com o campo <field> nulo
    Quando eu realizar a requisição para fazer login
    Então valido o status code 400
    E valido a mensagem de erro <message>

    Exemplos:

    | field      |  message          |        
    |   "email"  | "User not found"  |
    | "password" | "Invalid password"|