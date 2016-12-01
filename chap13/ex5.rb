class OrangeTree

  def initialize
    @age = 0
    @treeheight = 100
    @orange_count = 0
  end

  def height
    puts "Your orange tree is #{@treeheight} cm tall."
  end

  def one_year_passes
    @age += 1
    @treeheight += 50
    if @age == 21
      puts "Your orange tree has just turned 21. It ded nao."
      exit
    end
    if @age > 2
      @orange_count = @age * 2 + 2
    end
  end

  def count_the_oranges
    puts "You got #{@orange_count} oranges in yo\' orange tree."
  end

  def pick_an_orange
    if @orange_count == 0
      puts 'No (mo\') oranges to pick this year, yo.'
    else
      @orange_count -= 1
      puts 'Ay, que naranja bonita, ese!'
    end
  end

end

orangito = OrangeTree.new

orangito.height
orangito.count_the_oranges
orangito.one_year_passes
orangito.pick_an_orange
orangito.one_year_passes
orangito.one_year_passes
orangito.height
orangito.count_the_oranges
orangito.pick_an_orange
orangito.count_the_oranges
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.height
orangito.count_the_oranges
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.one_year_passes
orangito.height
orangito.one_year_passes
