class Sole_dataobject < DataFactory
  include Foundry
  include DateFactory
  include StringFactory
  include Workflows
  require 'json'



  attr_accessor :json_response,
                :title,
                :diacritical_text

  def initialize(browser , opts={})
    @browser = browser
    defaults = {

    }
    set_options(defaults.merge(opts))
  end

  def getJSONResponse
    visit Solr_classes do |page|
      json_response = page.get_json_response.to_s
      json_obj = JSON.parse(json_response)
      puts JSON.pretty_generate(json_obj)
      @title = json_obj['response']['docs'][0]['Title']
    end
  end

  def getDiacriticalText
    visit Solr_classes do |page|
      json_response = page.get_json_response.to_s
      json_obj = JSON.parse(json_response)
      index = 0
      response = json_obj['response']['docs'].length
      for index in 0 .. response
        if(json_obj['response']['docs'][index]['BibId'][0] == "63069")
          @diacritical_text = json_obj['response']['docs'][index]['Author']
          break
        end
        index+=1
      end
      puts JSON.pretty_generate(json_obj)
      @title = json_obj['response']['docs'][0]['Title']
    end
  end
end