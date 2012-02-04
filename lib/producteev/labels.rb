module Producteev
  class Labels
    def initialize(token)
      @token = token
    end

    def create(options = {})
      return Producteev::Api.instance.send_request("/labels/create.json",options,@token)
    end

    def delete(options = {})
      return Producteev::Api.instance.send_request("/labels/delete.json",options,@token)
    end

    def view(options = {})
      return Producteev::Api.instance.send_request("/labels/view.json",options,@token)
    end

    def show_list(options = {})
      return Producteev::Api.instance.send_request("/labels/show_list.json",options,@token)
    end

    def tasks(options = {})
      return Producteev::Api.instance.send_request("/labels/tasks.json",options,@token)
    end

    def set_title(options = {})
      return Producteev::Api.instance.send_request("/labels/set_title.json",options,@token)
    end
  end
end
