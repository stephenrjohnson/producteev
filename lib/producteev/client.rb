module Producteev
  class Client
    @api = nil

    def initialize(apikey,secret, debug = false)
      @api = Producteev::Api.new(apikey,secret, debug)
    end

    def login(email,password)
      @api.login(email,password)
    end

    def tasks()
      return Producteev::Tasks.new(@api)
    end

    def labels()
       return Producteev::Labels.new(@api)
    end

    def time()
     return @api.sendRequest("/time.json")
    end

    def activities()
       return Producteev::Activities.new(@api)
    end

    def dashboards()
       return Producteev::Dashboards.new(@api)
    end

    def users()
       return Producteev::Users.new(@api)
    end

  end
end
