module DaftFunkt
  module Upcase
    def self.fn
      lambda do |string|
        string.upcase
      end
    end
  end
end
