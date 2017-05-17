@all_contacts = ['hi']

def name
  puts "Enter your contacts first name"
  firstname = $stdin.gets.chomp
  @all_contacts << firstname
  puts "#{firstname} added"
  menu
end

def remove
  puts "Enter the name you would like to remove"
  nameremove = $stdin.gets.chomp
  @all_contacts.delete(nameremove)
  puts "#{nameremove} removed"
  menu
end

def menu
  puts "---Contact List Menu---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Delete Contact by name"
  puts "to quit, type 'quit'"

  print "> "

  election = $stdin.gets.chomp

  if election == "1"
    puts @all_contacts
    menu
  elsif election == "2"
    name
  elsif election == "3"
    remove
  elsif election == "quit"
    puts "Thanks for using the contact list!"
    exit(0)
  else
    puts "Please enter a valid choice"
    menu
  end
end
menu
