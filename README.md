# Movie.me

Movie.me is a web app that provides the user the possibility of creating lists and adding movies to it, a great tool for those who are cinema enthusiasts and want to give an extra layer of organization to its movies preferences.

## Description:

Inside the app, once the user is signed in, he'll be able to create, name and edit a list/bookmark, add movies to it according to his/her desire. Also, the app contains a "Search movies" section where the user can find that movie he couldn't remember the name. For that, he/she just need to type a search query keyword and the search engine will be in charge of searching through title and overview of the movies present in the database.

## Technical details:

Movie.me backend is structured on Ruby on Rails framework and its frontend developed through JavaScript, HTML, CSS and Bootstrap. 

The movie database present in the app was conceived from TMDB API and consists of 8.000 top rated titles. For that, the app runs a get request on "https://api.themoviedb.org/3/movie/top_rated", parsing the JSON file which is presented and retrieving the fields which are necessary (title, overview, release date, poster url and rating).

## Tech stacks I've used:

- Ruby on Rails
- JavaScript
- HTML & CSS
- Bootstrap
- Figma
- Heroku

## Improvements to be done:

- Improve web app responsiveness
- Enhance the app performance (backend)
- Add more JS elements to make the app more dynamic
- Implement better style to buttons and icons (frontend)

## Acknowledgments

...
