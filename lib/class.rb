require 'daft_funkt'
class Class
  include DaftFunkt
  def daft_funcs(*args)
    # We simply iterate through each passed in argument...
    args.each do |arg|
      # Makes sure that the arg is a valid daftFunkt
      next if DaftFunkt::Functions[arg].nil?

      # Here's the getter
      class_eval("def #{arg}; ::DaftFunkt::Functions[:#{arg}] ;end")
    end
  end
end
