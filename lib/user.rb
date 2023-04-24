class User
    attr_accessor :email, :age
  
    @@all_users = []
  
    def initialize(email, age)
      validate_email(email)
      validate_age(age)
      @email = email
      @age = age
      @@all_users << self
    end

    def self.all
      @@all_users
    end
  
    private
  
    def validate_email(email)
      raise ArgumentError, "Invalid email address" unless email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    end
  
    def validate_age(age)
      raise ArgumentError, "Age must be a positive integer" unless age.is_a?(Integer) && age > 0
    end

end