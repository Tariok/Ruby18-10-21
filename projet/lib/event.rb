class Event 
  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize(start_date,duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title
    @attendees = attendees
  end

  def postpone_24h()
    @start_date += 86400
  end

  def end_date
    end_date = @start_date + (@duration * 60)
  end
  
  def is_past?

    if @start_date < Time.now
      true
    else
      false
    end
  
  end

  def is_future?

    if  Time.now < @start_date
      true
    else
      false
    end
  end
    
  def is_soon?  
    limit_time =  @start_date -  (30 * 60) 
    if Time.now >= limit_time  && Time.now < @start_date
      puts "votre rdv est soon"
      return true
    elsif Time.now > @start_date
     puts "RDV MISS"
      return false
    else
      puts "Vous avez le time ;) "
      return true
    end
  end

  def to_s
   puts "> Titre : #{@title}\n> Date de début : #{@start_date}\n> Durée : #{@duration} minutes\n> Invités : #{@attendees} "
   end
  
end

  
