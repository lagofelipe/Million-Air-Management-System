$prompt = TTY::Prompt.new(active_color: :yellow)
$font = TTY::Font.new(:doom)
$pastel1 = Pastel.new
prompt = TTY::Prompt.new


def welcome_screen
  system "clear"
  puts $pastel1.blue($font.write("Million - Air  Inc ."))
  puts $pastel1.green("Welcome to Million-Air Inc Gate Management System - Version 1.1.6 - 2020 Dunder Mifflin Labs ")
end
  

def main_menu
    #system "clear"
main = $prompt.select "Please enter your search selection bellow", %w(city iata medallion)

   if  main == "city" 
          Airport.finder_by_city

          #puts menu.choice
   elsif main == "iata"
        Airport.finder_by_iata

        #puts menu.choice
   else main == "medallion"
    FrequentFlyer.medallion_menu
    end
  end



#prompt.yes?("Do you like Ruby?")

# rompt.select("Please make your Bellow") do |menu|
#         menu.default 3
      
#         menu.choice "Airport Finder by City", 1
#         menu.choice "Airport Information by IATA", 2
#         menu.choice "Medallion and Frequent Flyer Information", 3
      
 









