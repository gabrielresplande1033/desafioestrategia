class Project
    include HTTParty
    base_uri "http://54.174.86.218"



  def initialize()  
    self.class.headers "Content-Type" => "application/json"
  end
    
    def post(request_body, token)
        self.class.post("/projects", body: request_body.to_json,  
            headers: {"Authorization" => "Bearer #{token}"})
    end

end