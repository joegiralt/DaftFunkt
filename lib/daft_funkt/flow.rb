module DaftFunkt
  module Flow
    def self.fn
      proc do |*funcs|
        lambda do |data|
          funcs.inject(data) { |a, e| e.call(a) }
        end
      end
    end
  end
end
