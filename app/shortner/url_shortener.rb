module UrlShortener
  class << self
    
    CODESET = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    BASE    = CODESET.length # 62
    
    def encode(id)
      hash = ''
      while id > 0
        hash = CODESET[id % BASE] + hash
        id = (id.to_f / BASE.to_f).floor
      end
      hash
    end
    
    def decode(hash)
      id = 0
      hash.chars.each_with_index do |c,i|
        n = CODESET.index(c)
        return if n < 0 # invalid codeset
        id += n * (BASE ** (hash.length-i-1))
      end
      id
    end
    
  end
end