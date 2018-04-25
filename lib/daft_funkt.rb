require 'daft_funkt/filter'
require 'daft_funkt/flow'
require 'daft_funkt/is_even'
require 'daft_funkt/map'
require 'daft_funkt/reverse'
require 'daft_funkt/upcase'

module DaftFunkt
  Functions = {
    filter_fn:   Filter.fn,
    flow_fn:     Flow.fn,
    is_even_fn:  IsEven.fn,
    map_fn:      Map.fn,
    reverse_fn:  Reverse.fn,
    upcase_fn:   Upcase.fn
  }.freeze
end

class Class
  def daft_funkts(*args)
    args.each do |arg|
      next if DaftFunkt::Functions[arg].nil?
      # Here's the getter
      class_eval("def #{arg};DaftFunkt::Functions[:#{arg}];end")
    end
  end
end
