class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        all_concerts = Concert.all
        all_concerts.filter do |concert|
            concert.venue == self
        end
    end

    def bands 
        self.concerts.map do |concert|
            concert.band
        end
    end

    def concert_on(date)
        self.concerts.find do |concert|
            concert.date == date
        end
    end

    def most_frequent_band
        self.bands.uniq.max_by { |i| self.bands.count(i)}
    end
end