module Producteev
    class Labels
      @api = nil
      def initialize(api)
        @api = api
      end

      def create(options = {})
        return @api.sendRequest("/labels/create.json",options)
      end

      def delete(options = {})
        return @api.sendRequest("/labels/delete.json",options)
      end

      def view(options = {})
        return @api.sendRequest("/labels/view.json",options)
      end

      def show_list(options = {})
        return @api.sendRequest("/labels/show_list.json",options)
      end

      def tasks(options = {})
        return @api.sendRequest("/labels/tasks.json",options)
      end

      def set_title(options = {})
        return @api.sendRequest("/labels/set_title.json",options)
      end
  end
end
