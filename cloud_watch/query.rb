class Query
  def initialize(&block)
    # defaults
    @elb             = "Foo"
    @regions         = ["us-east-1"]
    @metrics         = ["RequestCount"]
    @aggregation     = "Average"
    @units           = "Count"
    @start_time      = Time.now
    @period          = 1

    instance_eval(&block)
    to_cloudwatch_query_format
  end

  def self.setter(*method_names)
    method_names.each do |name|
      send :define_method, name do |data|
        instance_variable_set "@#{name}".to_sym, data
      end
    end
  end

  def self.varags_setter(*method_names)
    method_names.each do |name|
      send :define_method, name do |*data|
        instance_variable_set "@#{name}".to_sym, data 
      end
    end
  end

  setter :elb, :aggregation, :units, :start_time, :period
  varags_setter :metrics, :regions

  private
  def to_cloudwatch_query_format
    # map data into format cloudwatch api understands
    # stub for now
    puts "Here is your config #{@elb}, #{@regions}, #{@metrics}, #{@units}"
  end
end
