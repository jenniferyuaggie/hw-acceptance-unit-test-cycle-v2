Given /the following movies exist/ do |table|
  movies_table.hashes.each do |movie|
    Movie.create(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie_title, director_name|
  if page.respond_to? :should
    page.should have_content(movie_title)
    page.should have_content(director_name)
  else
    assert page.has_content?(movie_title)
    assert page.has_content?(director_name)
  end
end