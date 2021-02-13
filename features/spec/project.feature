#language: pt

@project_tests
Funcionalidade: Manipular projetos
Como usuário do sistema
Eu quero realizar requisições na api
A fim de manipular projetos

@criar_projeto
Cenário: Registrar novo usuário com dados válidos
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E possua dados validos para criar um projeto
    Quando eu realizar a requisição para criar um novo projeto com campos e token validos
    Então valido o status code 200
    E valido o retorno dos dados na response
    E valido o contrato da API para criação de posts

