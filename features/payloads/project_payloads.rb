def generate_project_payload_with_valid_fields()
    json = {}
    json['title'] = Faker::Name.name
    json['description'] = Faker::Lorem.sentence(word_count: 5)
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = Faker::Name.name
    json['tasks'][0]['assignedTo'] = '602730ed127b1315ddb3986a'
    return json
end

def generate_project_payload_with_empty_field(field)
    json = {}
    json['title'] = ('title'.eql? field)? '' : Faker::Name.name
    json['description'] = ('description'.eql? field)? '' : Faker::Lorem.sentence(word_count: 5)
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = ('name'.eql? field)? '' : Faker::Name.name
    json['tasks'][0]['assignedTo'] = ('assignedTo'.eql? field)? '' : '602730ed127b1315ddb3986a'
    return json
end

def generate_project_payload_with_null_field(field)
    json = {}
    json['title'] = ('title'.eql? field)? nil : Faker::Name.name
    json['description'] = ('description'.eql? field)? nil : Faker::Lorem.sentence(word_count: 5)
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = ('name'.eql? field)? nil : Faker::Name.name
    json['tasks'][0]['assignedTo'] = ('assignedTo'.eql? field)? nil : '602730ed127b1315ddb3986a'
    return json
end

def generate_project_payload_for_nonexistent_user()
    json = {}
    json['title'] = Faker::Name.name
    json['description'] =  Faker::Lorem.sentence(word_count: 5)
    json['tasks'] = [{}]
    json['tasks'][0]['name'] = Faker::Name.name
    json['tasks'][0]['assignedTo'] = '12345678'
    return json
end