Given /^the following movies exist:$/ do |movie_table|
  movie_table.hashes.each do |movie_hash|
    Movie.create movie_hash
  end
end

Then /^the director of "(.+)" should be "(.+)"/ do |movie_name, movie_director|
  movie = Movie.find_by(title: movie_name)
  visit movie_path(movie)
  expect(page.body).to match(/Director:\s#{movie_director}/)
end