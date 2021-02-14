Dado('que possuo credenciais {string} e {string} válidas') do |email, password|
    @request_body = generate_login_payload(email, password)
end

Dado('que eu possuo as credenciais para login com o campo {string} com valor {string} inválido') do |field, value|
    @request_body = generate_login_payload_with_invalid_field(field, value)
end

Dado('que eu possuo as credenciais para login com o campo {string} vazio') do |field|
    @request_body = generate_login_payload_with_empty_field(field)
end

Dado('que eu possuo as credenciais para login com o campo {string} nulo') do |field|
    @request_body = generate_login_payload_with_null_field(field)
end