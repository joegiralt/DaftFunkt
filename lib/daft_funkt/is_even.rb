module DaftFunkt
  module IsEven
    def self.fn
      lambda do |number|
        number.even?
      end
    end
  end
end
