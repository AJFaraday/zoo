class Animal

  @@animals = []

  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def eat(food)
    if food.is_a?(Animal)
      raise "Bad #{self.class}! You are not allowed to eat #{food.name}"
    else
      puts "#{name} is munching some #{food}"
    end
  end

  def Animal.all
    @@animals.select{|x| x.is_a?(self)}
  end

  def Animal.first
    self.all.first
  end

  def Animal.find(id)
    animal = @@animals.detect { |x| x.id == id and x.is_a?(self)}
    if animal
      puts "Found #{animal.class} named #{animal.name}"
    else
      puts "No animal found"
    end
    animal
  end

  def Animal.find_by_name(name)
    animal = @@animals.detect { |x| x.name == name and x.is_a?(self) }
    if animal
      puts "Found #{animal.class} named #{animal.name}"
    else
      puts "No animal found"
    end
    animal
  end

  def Animal.load_data
    data = YAML.load_file(
      File.join(
        File.dirname(__FILE__),
        '..', 'data', 'animals.yml'
      )
    )
    data.each do |datum|
      Animal.create(datum['id'], datum['name'], datum['type'])
    end
  end

  def Animal.create(id, name, type)
    animal = Object.const_get(type).new(id, name)
    @@animals << animal
    animal
  end

end