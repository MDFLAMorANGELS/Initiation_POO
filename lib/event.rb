class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date)
        @duration = duration
        @title = title
        @attendees = attendees
    end
    
    def end_date(start_date)
        return @start_date + (@duration * 60)
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_futur?
        return @start_date > Time.now
    end

    def to_s
        ">Titre : #{@title}\n>Date de début : #{@start_date}\n>Durée : #{@duration} minutes\n>Invités : #{@attendees.join(", ")}"
    end

end