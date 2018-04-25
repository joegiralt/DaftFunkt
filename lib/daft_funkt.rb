module DaftFunkt

  Flow = Proc.new do |*funcs|
    ->(data) {
      funcs.inject(data){ |result, fn| fn.(result)}
    }
  end

  Map = ->(fn) {
    ->(array) {
      array.map{ |item| fn.(item) }
    }
  }

  Reverse = ->(collection) { 
    collection.reverse
  }

  UpCase = ->(string) {
    string.upcase
  }

end

