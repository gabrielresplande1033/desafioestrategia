def generate_login_payload(email, password)
    json = {}
    json['email'] = email
    json['password'] = password
    return json
end

def generate_login_payload_with_invalid_field(field, value)
    json = {}
    json['email'] = ('email'.eql? field)? value : "gbl_marcelino@hotmail.com"
    json['password'] = ('password'.eql? field)? value : "teste652"
    return json
end

def generate_login_payload_with_empty_field(field)
    json = {}
    json['email'] = ('email'.eql? field)? '' : "gbl_marcelino@hotmail.com"
    json['password'] = ('password'.eql? field)? '' : "teste652"
    return json
end

def generate_login_payload_with_null_field(field)
    json = {}
    json['email'] = ('email'.eql? field)? nil : "gbl_marcelino@hotmail.com"
    json['password'] = ('password'.eql? field)? nil : "teste652"
    return json
end