Feature: delete a movie

  As a movie buff
  So that I can delete a movie by typing in the movie name
  I want to delete a movie record so that it will not be listed

Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

Scenario: delete a movie from a list
  When I am on the details page for "Star Wars"
  And  I press "Delete"
  And  I should see "Movie 'Star Wars' deleted"
  And  I should not see "1977-05-25"
