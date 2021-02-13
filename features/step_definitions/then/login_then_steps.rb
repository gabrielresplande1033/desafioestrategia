Então('valido o contrato da API para o login') do
    expect(@response.body).to match_json_schema("login_schema") 
end

Então('valido a mensagem de erro {string}') do |message|
    @erro = @response.parsed_response["error"]
    expect(@erro).to eql(message)
end