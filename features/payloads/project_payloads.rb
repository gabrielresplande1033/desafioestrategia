def generate_project_payload_with_valid_fields()
    json = {}
    json['title'] = Faker::Name.name
    json['description'] = Faker::Lorem.name
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = Faker::Name.name
    json['tasks'][0]['assignedTo'] = '602730ed127b1315ddb3986a'
    return json
end

def generate_project_payload()
    json = {}
    json['title'] = "gjewopjgiwejgi"
    json['description'] = "gewigowejgiojweigie"
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = "gejwogjwei"
    json['tasks'][0]['assignedTo'] = "602730ed127b1315ddb3986a"
    return json
end