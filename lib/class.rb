require 'daft_funkt'
class Class
  def daft_funcs(*args)
    # We simply iterate through each passed in argument...
    args.each do |arg|
      # Makes sure that the arg is a valid daftFunkt
      next unless DaftFunkt::Functions[arg]

      # Here's the getter
      class_eval("def #{arg};@#{arg};end")

      # Here's the setter
      class_eval("def #{arg}=();@#{arg}=#{DaftFunkt::Functions[arg]};end")
    end
  end
end
