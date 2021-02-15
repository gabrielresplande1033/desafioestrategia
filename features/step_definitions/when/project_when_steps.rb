Quando('eu realizar a requisição para criar um novo projeto com campos e token validos') do
    @response = @project_service.post(@request_body, @token)
end

Quando('eu realizar a requisição para criar um novo projeto para um usuário inexistente e token valido') do
    @response = @project_service.post(@request_body, @token)
end

Quando('eu realizar a requisição para criar um novo projeto com um token valido') do
    @response = @project_service.post(@request_body, @token)
end

Quando('eu realizar a requisição para criar um novo projeto com campos validos e token invalido') do
    @response = @project_service.post(@request_body, @token)
end

Quando('eu realizar uma requisição para retornar todos os projetos') do
    @response = @project_service.get(@token)
end

Quando('eu realizar uma requisição para retornar esse projeto') do
    @response = @project_service.get_project_by_id(@project_id, @token)
end

Quando('eu realizar uma requisição para alterar um projeto') do
    @response = @project_service.put_project(@request_body, @project_id, @token)
end

Quando('eu realizar uma requisição para deletar esse projeto') do
    puts @project_id
    @response = @project_service.delete(@project_id, @token)
end