class Pet
  attr_accessor :name, :type

  def initialize(type,name)
    @type = type
    @name = name
  end
end

class Owner

  attr_accessor :pets, :number_of_pets, :name

  def initialize(name)
    @name = name
    @pets = []
    @number_of_pets = 0
  end

  def adopt_pet(pet)
    @pets << pet
  end
end

class Shelter

  @@adoptions = Hash.new{|hsh,key| hsh[key] = []}

  def adopt(owner, pet)
    owner.pets << pet
    owner.number_of_pets += 1
    @@adoptions[owner].push "a #{pet.type} named #{pet.name}"
  end

  def print_adoptions
    @@adoptions.each do |key,val|
      puts "#{key.name} has adopted the following pets:"
      val.each do |val|
        puts val
      end
      puts "\n"
    end
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions

puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."