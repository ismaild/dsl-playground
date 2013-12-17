class Game
  attr_reader :name, :tags

  def initialize(name)
    @name = name
    @tags = []
  end

  def year(value)
    @year = value
  end

  def system(value)
    @system = value
  end

  def print_details
    puts "#{@name} - #{@system} (#{@year})"
  end

  def capture_screenshot
    puts "Grabbing a screenshot from #{@name}"
  end

  def play
    puts "Starting up #{@name}"
  end

  def say(quote)
    puts "#{@name} - #{quote}"
  end

  def method_missing(method_name, *args)
    @tags << method_name.to_s
  end
end