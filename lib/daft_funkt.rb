module DaftFunkt

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

