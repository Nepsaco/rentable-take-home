module Searchable extend ActiveSupport::Concern
  module ClassMethods
    def search(search_params, search_for)
      results = self.none

      search_params.each do |key, value|
        if value == "1"
          scope_results = self.public_send("search_#{key}", search_for)
          results = results.or(scope_results)
        end
      end

      results
    end
  end
end
