 module Filterable
    extend ActiveSupport::Concern

    module ClassMethods
      def filter(params)
        results = where(nil)

        return results if params.nil?

        params.each do |key, value|
          results = results.public_send(key, value) unless value.blank?
        end

        results
      end
    end
  end
