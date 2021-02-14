Então('valido o status code {int}') do |status_code|
    expect(@response.code).to eq(status_code)
end

Então('valido os dados de retorno da response') do
    @user = @response.parsed_response['user']
    expect(@request_body['name']).to eql(@user['name'])
    expect(@request_body['email']).to eql(@user['email'])
end

Então('valido o contrato da API para o register') do
    expect(@response.body).to match_json_schema("register_schema") 
end

Então('valido a mensagem de retorno {string}') do |message|
    expect(@response.message).to eql(message)
end

Então('valido o retorno {string}') do |message|
    if(@response.code == 400 || @response.code == 401)
        @response_message = @response.parsed_response['error']
    else
        @response_message = @response.message
    end
    expect(@response_message).to eql(message)
end

