Dado('que eu tenha logado no sistema com as credenciais {string} e {string}') do |email, senha|
    step "que possuo credenciais '#{email}' e '#{senha}' válidas"
    step "eu realizar a requisição para fazer login"
end

Dado('possua um token valido') do
    @token = @response["token"]
end

Dado('possua dados validos para criar um projeto') do
    @request_body = generate_project_payload()
    puts @request_body
end