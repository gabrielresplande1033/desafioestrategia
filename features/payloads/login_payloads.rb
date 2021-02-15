def generate_login_payload(email, password)
    json = {}
    json['email'] = email
    json['password'] = password
    return json
end
