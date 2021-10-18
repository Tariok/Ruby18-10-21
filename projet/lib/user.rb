class User
  attr_accessor :email, :age
  @@all_user = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_user << self
  end

  def self.all
    return @@all_user
  end  

  def self.find(email_gift)
     user_age = @@all_user.find {|user| user.email == email_gift}.age
     puts "Voici l'âge de ton user est #{user_age} ans ! "
  end



end  
