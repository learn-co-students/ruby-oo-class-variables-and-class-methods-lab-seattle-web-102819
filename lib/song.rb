class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        @@genres.each do |genre| 
            if genre_hash[genre] 
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end 
        end
        genre_hash
    end

        # @@genres.inject(Hash.new(0)) {|total, i| total[i] +=1; total}
     def self.artist_count
        artists_hash = {}
        @@artists.each do |artists| 
            if artists_hash[artists] 
                artists_hash[artists] += 1
            else
                artists_hash[artists] = 1
            end 
        end
        artists_hash
    end
end
