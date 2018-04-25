module DaftFunkt
  module Filter
    def self.fn
      lambda do |fn|
        lambda do |collection|
          collection.select { |item| fn.call(item) }
        end
      end
    end
  end
end
