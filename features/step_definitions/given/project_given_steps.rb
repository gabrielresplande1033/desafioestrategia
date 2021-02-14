Dado('que eu tenha logado no sistema com as credenciais {string} e {string}') do |email, senha|
    step "que possuo credenciais '#{email}' e '#{senha}' válidas"
    step "eu realizar a requisição para fazer login"
end

Dado('possua um token valido') do
    @token = @response["token"]
    @user = @response.parsed_response["user"]
    @user_id = @user["_id"]
end

Dado('possua dados validos para criar um projeto') do
    @request_body = generate_project_payload_with_valid_fields()
    puts @request_body
end

Dado('possua dados validos para criar um projeto com o campo {string} vazio') do |field|
    @request_body = generate_project_payload_with_empty_field(field)
end

Dado('possua dados validos para criar um projeto com o campo {string} nulo') do |field|
    @request_body = generate_project_payload_with_null_field(field)
end

Dado('possua dados validos para criar um projeto com uma task assinada para um usuário inexistente') do
    @request_body = generate_project_payload_for_nonexistent_user()
end

Dado('que eu possua um token invalido') do
    @token = "invalidtoken123456"
end

Dado('que eu tenha um id de projeto criado') do
    step "que eu tenha logado no sistema com as credenciais '#{"gbl_marcelino@hotmail.com"}' e '#{"teste652"}'"
    step "possua um token valido"
    step "possua dados validos para criar um projeto"
    step "eu realizar a requisição para criar um novo projeto com campos e token validos"
    @project = @response.parsed_response["project"]
    @project_id = @project["tasks"][0]["project"]
end

Dado('que eu tenha um id de projeto inexistente') do
    @project_id = "329103903292813"
end