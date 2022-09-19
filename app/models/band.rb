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
end