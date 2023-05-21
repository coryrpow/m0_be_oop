# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end
    def say
        "*~*#{name}*~*"
    end
end
sufjan = Unicorn.new("Sufjan")
puts sufjan.color
puts sufjan.say
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty, :drink
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
        @drink = true
    end
    def drink
        @drink = false
    end
end

edward = Vampire.new("Edward", "cat")
p edward
edward.drink
p edward
dracula = Vampire.new("Dracula")
p dracula

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
   attr_reader :name, :rider, :color, :is_hungry, :stomach
   def initialize(name, rider, color, is_hungry)
       @name = name
       @rider = rider
       @color = color
       @is_hungry = true
       @stomach = 0
   end

   def eat(villager = 1)
    @stomach += villager
    if @stomach >= 4
        @is_hungry = false
    end
   end
end
puff = Dragon.new("Puff", "Lenny", "green", 3)
p puff
puff.eat(5)
p puff.stomach
p puff

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo, true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age, :young, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0, young = true, is_adult = false, is_old = false, has_ring = false)
        @name = name
        @disposition = disposition
        @age = age
        @young = true
        @is_adult = false
        @is_old = false
        @has_ring = false


            if @age < 33
              return  @young = true, @is_adult = false, @is_old = false
            elsif @age >= 101
              return @young = false, @is_adult = false, @is_old = true
            else 
                return @young = false, @is_adult = true, @is_old = false
            end
        end

        def baggins
            if @name == "Frodo"
                @has_ring = true
            end
        end


        def celebrate_birthday (birth_cycle = 1)
                @age += birth_cycle
                if @age < 33
                    return @young = true, @is_adult = false, @is_old = false
                elsif @age >= 101
                    return @young = false, @is_adult = true, @old = true
                else
                    return @young = false, @is_adult = true, @is_old = false
                end
    end
end


    frodo = Hobbit.new("Frodo", "tired", 32)
    sam = Hobbit.new("Samwise", "simp", 31)
    bilbo = Hobbit.new("Bilbo", "possessed")
    p frodo
    p frodo.baggins
    
    p sam
    p bilbo
    p bilbo.celebrate_birthday(101)
    