module DaftFunkt
  module Includes
    def self.fn
      lambda do |sub_set|
        lambda do |whole_set|
          if whole_set.class == Hash
            whole_set.values.include?(sub_set)
          else
            whole_set.include?(sub_set)
          end
        end
      end
    end
  end
end
