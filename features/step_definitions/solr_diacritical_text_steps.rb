When(/^I am taking diacritic text from json response$/) do
  @solr = make Sole_dataobject
  @solr.getDiacriticalText
end

Then(/^the diacritic text from json response should be equal to hardcoded value$/) do
  @text = @solr.diacritical_text
  puts "diacritical text ---> #@text"
  @text.should == "Chateaubriand, Franc?ois-Rene?,"

end