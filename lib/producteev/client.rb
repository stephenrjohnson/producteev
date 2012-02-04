module Producteev
  class Client

    def initialize(email,password)
      param = {:email => email, :password => password}
      @token = Producteev::Api.instance.send_request("/users/login.json",param)['login']['token']
    end

    def tasks()
      return Producteev::Tasks.new(@token)
    end

    def labels()
      return Producteev::Labels.new(@token)
    end

    def time()
      return Producteev::Api.instance.send_request("/time.json",{},@token)
    end

    def activities()
      return Producteev::Activities.new(@token)
    end

    def dashboards()
      return Producteev::Dashboards.new(@token)
    end

    def users()
      return Producteev::Users.new(@token)
    end

  end
end
