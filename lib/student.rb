class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    # binding.pry
    bruh = student_hash.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(students_array)
    ayo = students_array
    # binding.pry
    ayo.each do |student|
      new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    # binding.pry
    son = attributes_hash
    son.each {|key, value| self.send(("#{key}="), value)}

  end

  def self.all
    @@all
  end

end
