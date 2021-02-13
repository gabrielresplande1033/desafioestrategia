Quando('eu realizar a requisição para registrar um novo usuário') do
    @response = @register_service.post(@request_body)
end