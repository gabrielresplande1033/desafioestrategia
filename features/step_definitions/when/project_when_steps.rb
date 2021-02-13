Quando('eu realizar a requisição para criar um novo projeto com campos e token validos') do
    @response = @project_service.post(@request_body, @token)
    puts @response
end