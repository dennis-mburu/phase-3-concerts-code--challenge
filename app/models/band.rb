class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        all_concerts = Concert.all
        all_concerts.filter do |concert|
            concert.band == self
        end
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def all_introductions
        band_concerts_arr = self.concerts
        band_concerts_arr.map do |concert|
            concert.introduction
        end
    end
end