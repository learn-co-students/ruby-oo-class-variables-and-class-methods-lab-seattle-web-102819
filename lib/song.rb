require 'pry'

@@genres = []
@@artists = []
@@count = 0

class Song
	attr_accessor :name, :artist, :genre
	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq!
	end	

	def self.genres
		@@genres.uniq!
	end

	def self.genre_count
		hash = Hash.new(0)
		@@genres.select {|genre| hash[genre] += 1}
		hash
	end

	def self.artist_count
		hash = Hash.new(0)
		@@artists.select {|artist| hash[artist] += 1}
		hash
	end
end

song1 = Song.new("The Sound of Silence", "Disturbed", "Heavy Metal")
song2 = Song.new("Stricken", "Disturbed", "Heavy Metal")
song3 = Song.new("Inside The Fire", "Disturbed", "Heavy Metal")
song4 = Song.new("Afterlife", "Avenged Sevenfold", "Metalcore")
sond5 = Song.new("So Far Away", "Avenged Sevenfold", "Heavy Metal")
song6 = Song.new("Almost Easy", "Avenged Sevenfold", "Heavy Metal")

# binding.pry
# 0