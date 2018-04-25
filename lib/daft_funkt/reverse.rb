module DaftFunkt
  module Reverse
    def self.fn
      lambda do |collection|
        collection.reverse
      end
    end
  end
end
