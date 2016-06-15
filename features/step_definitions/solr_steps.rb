Given(/^I open the dev url$/) do
  @browser.window.resize_to 1600, 1200
end

When(/^I am taking title from json response$/) do
  @solr = make Sole_dataobject
  @solr.getJSONResponse
end

Then(/^the title from json response should be equal to hardcoded value$/) do
  @title = @solr.title
  puts "title----> #@title"
  @title.should == "The life of John Graves Simcoe, first lieutenant-governor of the province of Upper Canada, 1792-96,"
end