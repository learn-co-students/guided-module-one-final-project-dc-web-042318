class CommandLineInterface
@@countries
@@categories


  def start
    greet
    select_countries
    select_category
    activities
    question
  end

  def greet
    puts "Let's discover places and things to do together for your next vacation!"
  end

  def select_countries
    puts "******What continent do you want to visit?******"
    #continent = Country.all.each{|c| puts c.continent}
    selection = gets.chomp.split.map{|w| w.capitalize}.join(' ')
    @@countries = Country.where(continent: selection)
    countries = @@countries.map{|c|c.name}.join(' & ')
    puts "******What does #{countries} offer for their tourists!******"
  end


   def select_category
    puts "******What do you want to see?******"
    @@categories = Category.all.each{|c|puts c.name.capitalize}
     answer = gets.chomp
    @result = @@categories.select{|c|c.name == answer.capitalize}
   end

  def activities
     act_selection = Attraction.where(country_id:@@countries.map{|c|c.id}, category_id:@result.map{|r|r.id})
     puts "------- This is your activity  list: #{act_selection.map{|a| a.name}.join(' & ')}-------"
  end

  def question
    puts "*******Do you want to see what oher countries have to offer Y / N ?*******"
    answer = gets.chomp
    if answer.downcase == "y"
      sec_cli = CommandLineInterface.new
      sec_cli.start
    else end
  end

end
  # def alternative
  #   puts "Not quite what you were looking for - how about planning your vacation around your budget. What is your budget?: "
  #   answer = gets.chomp
  #   if answer < 8
  #     Attraction.all.
  #
  # end
  #Attraction.find_by_sql "SELECT * FROM attractions WHERE country_id = @@countries AND country_id = @@countries"
  # def list_country(selection)
  #   if c.continent == selection
  #    Country.all.select do |c|
  #    puts c.name
  #    end
  #  else end
  # end

  # def select_country
  #   puts "What part of the world would you like to travel to? Choose a country below:"
  #   Country.all.each{|country| puts country.name}
  #   selection = gets
  # end
