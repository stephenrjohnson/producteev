module Producteev
    class Activities
      @api = nil
      def initialize(api)
        @api = api
      end

      def show_activities(options = {})
        return @api.send_request("/activities/show_activities.json",options)
      end

      def show_notifications(options = {})
        return @api.send_request("/activities/show_notifications.json",options)
      end

      def notifications_set_read(options = {})
        return @api.send_request("/activities/notifications_set_read.json",options)
      end

      def set_read(options = {})
        return @api.send_request("/activities/set_read.json",options)
      end
  end
end
