def generate_register_payload_with_valid_fields()
    json = {}
    json['name'] = Faker::Name.name
    json['email'] = Faker::Internet.email
    json['password'] = Faker::Number.number(digits: 8).to_s
    return json
end

def generate_register_payload_with_empty_fields(field)
    json = {}
    json['name'] = ('name'.eql? field)? '' : Faker::Name.name
    json['email'] = ('email'.eql? field)? '' : Faker::Internet.email
    json['password'] = ('password'.eql? field)? '' : Faker::Number.number(digits: 8).to_s
    return json
end


def generate_register_payload_with_null_fields(field)
    json = {}
    json['name'] = ('name'.eql? field)? nil : Faker::Name.name
    json['email'] = ('email'.eql? field)? nil : Faker::Internet.email
    json['password'] = ('password'.eql? field)? nil : Faker::Number.number(digits: 8).to_s
    return json
end

def generate_register_payload_with_existing_user()
    json = {}
    json['name'] = Faker::Name.name
    json['email'] = "gbl_marcelino@hotmail.com"
    json['password'] = Faker::Number.number(digits: 8).to_s
    return json
end