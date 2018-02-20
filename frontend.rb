require 'unirest'

jwt = ""

while true
  
  system 'clear'
  puts "---"
  puts "Officially Unofficial Dungeons and Dragons Character Sheet Application"
  puts "---"
  puts

  puts "--- Options ---"
  puts
  puts "[sign] Sign up for an account"
  puts "[login] Log in to your account"
  puts "[logout] Log out of your account"

  if jwt != ""
    puts "[new] Create a new character sheet"
  end

  puts "[q] Exit"

  input = gets.chomp

  if input == "sign"
    client_params = {}

    print "Enter Username: "
    client_params[:name] = gets.chomp
    print "Enter Email: "
    client_params[:email] = gets.chomp
    print "Enter Password: "
    client_params[:password] = gets.chomp
    print "Confirm Password: "
    client_params[:password_confirm] = gets.chomp
    puts

    response = Unirest.post("http://localhost:3000/users", parameters: client_params)
    json_data = response.body

    if !json_data["errors"]
      puts JSON.pretty_generate(json_data)
      # puts "Username: #{json_data["name"]}"
      # puts "Email: #{json_data["email"]}"
      # puts "Password Digest: #{json_data["password_digest"]}"
    else
      errors = json_data["errors"]
      errors.each do |error|
        puts error
      end
    end

  elsif input == "login"
      puts "Login"
      print "Email: "
      input_email = gets.chomp
      print "Password: "
      input_password = gets.chomp

      response = Unirest.post(
                              "http://localhost:3000/user_token",
                              parameters: {
                                            auth: {
                                                    email: input_email,
                                                    password: input_password
                                                  }
                                          }
                              )
      puts JSON.pretty_generate(response.body)
      jwt = response.body["jwt"]
      Unirest.default_header("Authorization", "Bearer #{jwt}")

  elsif input == "logout"
    jwt = ""
    Unirest.clear_default_headers()

  elsif input == "q"
    puts
    puts "Thanks for playing the world's best roleplaying game!"
    exit
    

  end

  puts
  puts "----------"
  gets

end