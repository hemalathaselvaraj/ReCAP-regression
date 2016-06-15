class Solr_classes < PageFactory

  page_url $test_site

  value(:get_json_response) { |b| b.body.when_present(60).text}


end