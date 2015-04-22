
module Flasher
  class Flash
    attr_reader :messages 

    def initialize
      @messages = Hash.new
      @temp_messages = Hash.new
    end

    def []=(key,value)
      k = key.to_s
      messages[k] = value
    end

    def [](key)
      k = key.to_s
      @temp_messages[k] || messages[k]
    end

    def each(&prc)
      messages.each(&prc)
    end


    def write_to_cookie(session)
      discard_used_keys
      session["flash"] = @messages
    end

    def build_from_cookie(session)
      @temp_messages = session["flash"] || {}
    end

    def now
      @temp_messages
    end


  end
end
