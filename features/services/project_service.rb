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

    def get(token)
        self.class.get("/projects", 
            headers: {"Authorization" => "Bearer #{token}"})
    end

    def get_project_by_id(project_id, token)
        self.class.get("/projects/#{project_id}", 
            headers: {"Authorization" => "Bearer #{token}"})
    end

    def put_project(request_body, project_id, token)
        self.class.get("/projects/#{project_id}", body: request_body.to_json,
            headers: {"Authorization" => "Bearer #{token}"})
    end

    def delete(project_id, token)
        self.class.delete("/projects/#{project_id}", 
            headers: {"Authorization" => "Bearer #{token}"})
    end

end