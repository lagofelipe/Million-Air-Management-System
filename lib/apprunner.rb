$prompt = TTY::Prompt.new(active_color: :red)
$font = TTY::Font.new(:doom)
$pastel1 = Pastel.new
prompt = TTY::Prompt.new


def welcome_screen
  system "clear"
  puts $pastel1.blue($font.write("Million - Air  Inc ."))
  p "Welcome on board, and Thank you for flying Million-Air!"
end
  

def main_menu
    system "clear"


  main = $prompt.select "Airport finder by City, Airport finder by IATA, or current Fequent Flyer Medallion Status?", %w(city iata medallion)

   if  main == "city" 
          finder_by_city

          #puts menu.choice
   elsif main == "iata"
        finder_by_iata

        #puts menu.choice
   else main == "medallion"
        medallion_menu
    end
  end



#prompt.yes?("Do you like Ruby?")

# rompt.select("Please make your Bellow") do |menu|
#         menu.default 3
      
#         menu.choice "Airport Finder by City", 1
#         menu.choice "Airport Information by IATA", 2
#         menu.choice "Medallion and Frequent Flyer Information", 3
      
 









