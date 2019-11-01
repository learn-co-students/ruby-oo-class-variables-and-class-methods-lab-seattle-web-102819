require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist =artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        Song.genres.each {|g| genre_hash[g] = 0}
        @@genres.each do |genre| 
            genre_hash[genre] += 1
            end
        genre_hash 
    end

    def self.artist_count
        artist_hash = {}
        Song.artists.each {|a| artist_hash[a] = 0}
        @@artists.each do |artist| 
            artist_hash[artist] += 1
            end
        artist_hash 
    end

end