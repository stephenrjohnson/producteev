module Producteev
  class Activities
    def initialize(token)
      @token = token
    end

    def show_activities(options = {})
      return Producteev::Api.instance.send_request("/activities/show_activities.json",options,@token)
    end

    def show_notifications(options = {})
      return Producteev::Api.instance.send_request("/activities/show_notifications.json",options,@token)
    end

    def notifications_set_read(options = {})
      return Producteev::Api.instance.send_request("/activities/notifications_set_read.json",options,@token)
    end

    def set_read(options = {})
      return Producteev::Api.instance.send_request("/activities/set_read.json",options,@token)
    end
  end
end
