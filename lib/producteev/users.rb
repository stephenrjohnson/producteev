module Producteev
    class Users
      @api = nil
      def initialize(api)
        @api = api
      end

      def view(options = {})
        return @api.sendRequest("/users/view.json",options)
      end

      def set_default_dashboard(options = {})
        return @api.sendRequest("/users/set_default_dashboard.json",options)
      end

      def colleagues(options = {})
        return @api.sendRequest("/users/colleagues.json",options)
      end

      def set_sort_by(options = {})
        return @api.sendRequest("/users/set_sort_by.json",options)
      end

      def set_timezone(options = {})
        return @api.sendRequest("/users/set_timezone.json",options)
      end
  end
end
