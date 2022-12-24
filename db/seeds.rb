require 'rest-client'

puts "Cleaning database..."

Movie.destroy_all
User.destroy_all
List.destroy_all

puts "Creating movies..."

def tmdb_api_key
  ENV["TMDB_API_KEY"]
end

def movies_dataset
  # assigning the api key to a variable so we can use later on ...
  api_data = { key: tmdb_api_key }

  # assigning page equals to 1, this value will be changed as we iterate to create the movie's instances ...
  page = 1

  # iterating to create movies and adding +1 to pages so we can create movies in the first 300 pages ...
  while page <= 500
    top_movies = RestClient.get("https://api.themoviedb.org/3/movie/top_rated?api_key=#{api_data[:key]}&language=en-US&page=#{page}")
    top_movies_array = JSON.parse(top_movies)["results"]
    top_movies_array.each do |movie|
      Movie.create(
        title: movie["title"],
        overview: movie["overview"],
        poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/#{movie["poster_path"]}",
        rating: movie["vote_average"]
      )
    end
    page += 1
  end
end

movies_dataset()

puts "Finished seeding the app!"
