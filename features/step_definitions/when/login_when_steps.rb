Quando('eu realizar a requisição para fazer login') do
    @response = @login_service.post(@request_body)
    puts @response
end