Então('valido o retorno dos dados do projeto na response') do
    @project = @response.parsed_response["project"]
    expect(@request_body["title"]).to eql(@project["title"])
    expect(@request_body["tasks"][0]["name"]).to eql(@project["tasks"][0]["name"])
    expect(@request_body["tasks"][0]["assignedTo"]).to eql(@project["tasks"][0]["assignedTo"])
    expect(@request_body["description"]).to eql(@project["description"])
end

Então('valido que o projeto foi associado ao usuario do token') do
    expect(@user_id).to eql(@project["user"])
end

Então('valido o contrato da API para criação de posts') do
    expect(@response.body).to match_json_schema("project_schema") 
end

Então('valido o contrato da API para retorno de projetos') do
    expect(@response.body).to match_json_schema("get_project_schema") 
end

Então('valido que o projeto retornado possui o mesmo id que busquei') do
    expect(@project_id).to eql(@response["project"]["_id"])
end

Então('valido que esse projeto nao consta mais na busca por projeto') do
    @response = @project_service.get_project_by_id(@project_id, @token)
    expect(@response["project"]).to eql(nil)
end