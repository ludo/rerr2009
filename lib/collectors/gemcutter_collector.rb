require 'rest_client'
require 'json'

module Collectors
  class GemcutterCollector
    def self.collect!
      # Use batched processing
      Library.find_each do |library|
        logger.debug("Retrieving current version of #{library.name}")
        response = JSON.parse(RestClient.get("http://gemcutter.org/gems/#{library.name}.json"))
        library.update_attribute(:version, response["version"]) if response["version"] && response["version"] != library.version
      end
    end
  end
end