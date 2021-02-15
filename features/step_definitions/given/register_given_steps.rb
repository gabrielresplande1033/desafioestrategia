Dado('que eu possuo nome, email e senha válidos para registrar um novo usuário') do
    @request_body = generate_register_payload_with_valid_fields
end

Dado('que eu deseje realizar uma requisição de registro com o campo {string} vazio') do |field|
    @request_body = generate_register_payload_with_empty_fields(field)
end

Dado('que eu deseje realizar uma requisição de registro com o campo {string} nulo') do |field|
    @request_body = generate_register_payload_with_null_fields(field)
end

Dado('que eu possua os dados de um usuário já criado') do
    @request_body = generate_register_payload_with_existing_user
end