class Concert
    attr_reader :band, :venue
    @@all = []

    def initialize (date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end

end