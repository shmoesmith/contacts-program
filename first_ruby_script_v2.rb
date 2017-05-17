@all_contacts = []

def name
  puts "Enter your contacts first name"
  firstname = gets.chomp
  @all_contacts << firstname
  puts "#{firstname} added"
  menu
end

def remove
  puts "Enter the name you would like to remove"
  nameremove = gets.chomp
  @all_contacts.delete(nameremove)
  puts "#{nameremove} removed"
  menu
end

def menu
  puts "---Contact List Menu---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Delete Contact by name"
  puts "to exit, type 'quit'"

  print "> "

  election = gets.chomp

    case election
        when "1"
            puts @all_contacts.sort 
            menu
        when "2"
            name 
        when "3"
            remove 
        when "quit"
            puts "Thanks for using the contact list!"
            exit(0)
        else
            puts "Please enter a valid choice" 
            menu
     end

 end

 while true
  menu
end
