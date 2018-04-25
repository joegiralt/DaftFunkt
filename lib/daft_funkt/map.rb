module DaftFunkt
  module Map
    def self.fn
      lambda do |fn|
        lambda do |collection|
          collection.map { |item| fn.call(item) }
        end
      end
    end
  end
end
