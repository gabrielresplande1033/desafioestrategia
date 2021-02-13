class Register
    include HTTParty
    base_uri "http://54.174.86.218"
    
    def post(request_body)
        self.class.post("/auth/register", body: request_body)
    end

end