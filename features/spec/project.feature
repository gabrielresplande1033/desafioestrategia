#language: pt

@project_tests
Funcionalidade: Manipular projetos
Como usuário do sistema
Eu quero realizar requisições na api
A fim de manipular projetos

@criar_projeto
Cenário: Criar novo projeto com dados válidos
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E possua dados validos para criar um projeto
    Quando eu realizar a requisição para criar um novo projeto com campos e token validos
    Então valido o status code 200
    E valido o retorno dos dados do projeto na response
    E valido que o projeto foi associado ao usuario do token
    E valido o contrato da API para criação de posts

@criar_projeto_campo_vazio
Esquema do Cenário: Criar novo projeto com campo vazio
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E possua dados validos para criar um projeto com o campo <field> vazio
    Quando eu realizar a requisição para criar um novo projeto com um token valido
    Então valido o status code <statuscode>
    E valido o retorno <mensagem>

    Exemplos:

    | field         |statuscode| mensagem                     |        
    | "title"       | 200      | 'OK'                         |
    | "description" | 200      | 'OK'                         |
    | "name"        | 200      | 'OK'                         |
    | "assignedTo"  | 400      | "Error creating new project" |

@criar_projeto_campo_nulo
Esquema do Cenário: Criar novo projeto com campo nulo
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E possua dados validos para criar um projeto com o campo <field> nulo
    Quando eu realizar a requisição para criar um novo projeto com um token valido
    Então valido o status code <statuscode>
    E valido o retorno <mensagem>

    Exemplos:

    | field         | statuscode| mensagem |        
    | "title"       | 200       | 'OK'     |
    | "description" | 200       | 'OK'     |
    | "name"        | 200       | 'OK'     |
    | "assignedTo"  | 200       | 'OK'     |

@criar_projeto_para_usuario_inexistente
Cenário: Criar novo projeto para usuario inexistente
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E possua dados validos para criar um projeto com uma task assinada para um usuário inexistente
    Quando eu realizar a requisição para criar um novo projeto com campos e token validos
    Então valido o status code 400
    E valido o retorno "Error creating new project"

@criar_projeto_com_token_invalido
Cenário: Criar novo projeto para usuario inexistente
    Dado que eu possua um token invalido
    E possua dados validos para criar um projeto
    Quando eu realizar a requisição para criar um novo projeto com campos validos e token invalido
    Então valido o status code 401
    E valido o retorno "Token invalid"

@retornar_projetos
Cenário: Retornar projetos
    Dado que eu tenha logado no sistema com as credenciais "ze_alberto@gmail.com" e "123456"
    E possua um token valido
    Quando eu realizar uma requisição para retornar todos os projetos
    Então valido o status code 200

@retornar_projetos_token_invalido
Cenário: Retornar projetos com token invalido
    Dado que eu possua um token invalido
    Quando eu realizar uma requisição para retornar todos os projetos
    Então valido o status code 401
    E valido o retorno "Token invalid"

@retornar_projeto_por_id
Cenário: Retornar projeto por id
    Dado que eu tenha um id de projeto criado
    Quando eu realizar uma requisição para retornar esse projeto
    Então valido o status code 200
    E valido que o projeto retornado possui o mesmo id que busquei

@retornar_projeto_inexistente
Cenário: Retornar projeto com id inexistente
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E que eu tenha um id de projeto inexistente
    Quando eu realizar uma requisição para retornar esse projeto
    Então valido o status code 400
    E valido o retorno "Error loading project"

@adicionar_tasks_ao_projeto
Cenário: Adicionar tasks a um projeto ja existente
    Dado que eu tenha um id de projeto criado
    E dados para adicionar tasks a esse projeto
    Quando eu realizar uma requisição para alterar um projeto
    Então valido o status code 200

@deletar_projeto
Cenário: Deletar projeto
    Dado que eu tenha um id de projeto criado
    Quando eu realizar uma requisição para deletar esse projeto
    Então valido o status code 200
    E valido que esse projeto nao consta mais na busca por projeto

@deletar_projeto_inexistente
Cenário: Deletar projeto inexistente
    Dado que eu tenha logado no sistema com as credenciais "gbl_marcelino@hotmail.com" e "teste652"
    E possua um token valido
    E que eu tenha um id de projeto inexistente
    Quando eu realizar uma requisição para deletar esse projeto
    Então valido o status code 400
    E valido o retorno "Error deleting project"