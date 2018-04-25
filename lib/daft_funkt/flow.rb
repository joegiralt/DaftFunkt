module DaftFunkt
  module Flow
    def self.fn
      proc do |*funcs|
        lambda do |data|
          funcs.inject(data) { |result, fn| fn.call(result) }
        end
      end
    end
  end
end
