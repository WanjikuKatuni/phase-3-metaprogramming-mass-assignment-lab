class Person
  # your code here

  def initialize(args)
    args.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end


end



bob_attributes = {name: "bob", hair_color:"brown"}

bob = Person.new(bob_attributes)
puts bob.name
puts bob.hair_color


susan_attributes = {name: "susan", height: 5.2, eyecolor:"brown"}

susan = Person.new(susan_attributes)
puts susan.name
puts susan.height
puts susan.eyecolor