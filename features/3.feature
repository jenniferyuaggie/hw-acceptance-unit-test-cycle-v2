Feature: create a movie

  As a movie buff
  So that I can create a movie by typing in the movie name
  I want to create a movie record so that it will be listed

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: Create a new movie
  When I am on the RottenPotatoes home page
  And  I follow "Add new movie"
  And  I fill in "Title" with "A Simple Favor"
  And  I select "R" from "Rating"
  And  I select "2018" from "movie_release_date_1i"
  And  I select "September" from "movie_release_date_2i"
  And  I select "14" from "movie_release_date_3i"
  And  I press "Save Changes"
  Then I should see "A Simple Favor was successfully created."
  And  I should see "R"
  And  I should see "2018-09-14"