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

  # if jwt != ""
    puts "[new] Create a new character sheet"
    puts "[index] See all of your character sheets"
    puts "[show] See one of your character sheets"
    puts "  [update] Update one of your character sheets"
    puts "[destroy] Delete one of your character sheets"
  # end

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

  elsif input == "new"
    params = {}
    puts
    print "Character Name: "
    params[:name] = gets.chomp
    print "Strength: "
    params[:strength] = gets.chomp
    print "Dexterity: "
    params[:dexterity] = gets.chomp
    print "Constitution: "
    params[:constitution] = gets.chomp
    print "Intelligence: "
    params[:intelligence] = gets.chomp
    print "Wisdom: "
    params[:wisdom] = gets.chomp
    print "Charisma: "
    params[:charisma] = gets.chomp
    print "Race id: "
    params[:race_id] = gets.chomp
    print "Background id: "
    params[:background_id] = gets.chomp
    print "Class id: "
    params[:klass_id] = gets.chomp
    print "Level: "
    params[:level] = gets.chomp
    print "Alignment: "
    params[:alignment] = gets.chomp
    print "Personality: "
    params[:personality] = gets.chomp
    print "Ideals: "
    params[:ideals] = gets.chomp
    print "Bonds: "
    params[:bonds] = gets.chomp
    print "Flaws: "
    params[:flaws] = gets.chomp
    print "Money (in copper pieces): "
    params[:money] = gets.chomp
    print "Armor Class: "
    params[:armor_class] = gets.chomp
    print "Hit Points: "
    params[:hit_points] = gets.chomp


    response = Unirest.post("http://localhost:3000/character_sheets", parameters: params)
    character = response.body

    puts
    puts "- Pick skills to be proficient in (y/n):"
    i = 1
    skill_pro = false
    print "1. Acrobatics: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "2. Animal Handling: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "3. Arcana: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "4. Athletics: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "5. Deception: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "6. History: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "7. Insight: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "8. Intimidation: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "9. Investigation: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "10. Medicine: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "11. Nature: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "12. Perception: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "13. Performance: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "14. Persuasion: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "15. Religion: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "16. Sleight of Hand: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "17. Stealth: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})
    i += 1
    skill_pro = false
    print "18. Survival: "
    if gets.chomp == "y"
      skill_pro = true
    end
    response = Unirest.post("http://localhost:3000/skill_tests", parameters: {skill_id: i, character_page_id: character[:id], proficient: skill_pro})

    character = Unirest.get("http://localhost:3000/character_sheets/#{character['id']}").body


    puts JSON.pretty_generate(character)

  elsif input == "index"
    response = Unirest.get("http://localhost:3000/character_sheets")
    sheets = response.body

    puts JSON.pretty_generate(sheets)
    
  elsif input == "show"
    print "Character Sheet ID: "
    sheet_id = gets.chomp

    response = Unirest.get("http://localhost:3000/character_sheets/#{sheet_id}")
    sheet = response.body

    puts JSON.pretty_generate(sheet)

  elsif input == "update"

    print "Character Sheet ID: "
    sheet_id = gets.chomp

    response = Unirest.get("http://localhost:3000/character_sheets/#{sheet_id}")
    sheet = response.body

    params = {}
    puts
    print "Character Name (#{sheet['name']}): "
    params[:name] = gets.chomp
    print "Strength (#{sheet['strength']}): "
    params[:strength] = gets.chomp
    print "Dexterity (#{sheet['dexterity']}): "
    params[:dexterity] = gets.chomp
    print "Constitution (#{sheet['constitution']}): "
    params[:constitution] = gets.chomp
    print "Intelligence (#{sheet['intelligence']}): "
    params[:intelligence] = gets.chomp
    print "Wisdom (#{sheet['wisdom']}): "
    params[:wisdom] = gets.chomp
    print "Charisma (#{sheet['charisma']}): "
    params[:charisma] = gets.chomp
    print "Level (#{sheet['level']}): "
    params[:level] = gets.chomp
    print "Alignment (#{sheet['alignment']}): "
    params[:alignment] = gets.chomp
    print "Personality (#{sheet['personality']}): "
    params[:personality] = gets.chomp
    print "Ideals (#{sheet['ideals']}): "
    params[:ideals] = gets.chomp
    print "Bonds (#{sheet['bonds']}): "
    params[:bonds] = gets.chomp
    print "Flaws (#{sheet['flaws']}): "
    params[:flaws] = gets.chomp
    print "Money (#{sheet['money']}): "
    params[:money] = gets.chomp
    print "Armor Class (#{sheet['armor_class']}): "
    params[:armor_class] = gets.chomp
    print "Hit Points (#{sheet['hit_points']}): "
    params[:hit_points] = gets.chomp

    params.delete_if { |key, value| value.empty? }

    response = Unirest.patch("http://localhost:3000/character_sheets/#{sheet['id']}", parameters: params)
    updated_sheet = response.body

    puts JSON.pretty_generate(updated_sheet)
    
  elsif input == "destroy"
    print "Character Sheet ID: "
    sheet_id = gets.chomp

    response = Unirest.delete("http://localhost:3000/character_sheets/#{sheet_id}")
    data = response.body

    puts JSON.pretty_generate(data)

  elsif input == "q"
    puts
    puts "Thanks for playing the world's best roleplaying game!"
    exit
    

  end

  puts
  puts "----------"
  gets

end