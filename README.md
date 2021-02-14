# Objetivo
Esse projeto tem como principal objetivo a avaliação do processo seletivo da Estratégia Educacional

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)
- [Cucumber](https://cucumber.io/)
- [HTTParty](https://www.rubydoc.info/github/jnunemaker/httparty/HTTParty/ClassMethods)


# Funcionalidades
- Automação de testes no endpoint de Login
- Automação de testes no endpoint de Registro
- Automação de testes no endpoint de Projetos, valiando a criação de novos projetos
- Automação de testes no endpoint de Projetos, validando o retorno de todos os projetos
- Automação de testes no endpoint de Projetos, validando o retorno de um projeto especifico
- Automação de testes no endpoint de Projetos, validando a alteração de um projeto
- Automação de testes no endpoint de Projetos, validando a exclusão de um projeto

# Como executar os testes da API
Para executar os testes da API deve-se possuir instalado o **Ruby**, **Bundle**, clonar o projeto e executar os seguintes comandos dentro da raiz do projeto:
- *bundle install*
- *cucumber* (para executar todos os testes do projeto)
- *cucumber -t @register_tests* (Para executar os testes referente ao Registro de Usuário)
- *cucumber -t @login_tests* (Para executar os testes referente ao Login)
- *cucumber -t @project_tests* (Para executar os testes referente ao endpoint de Projetos - inserção, alteração, retorno, exclusão)
