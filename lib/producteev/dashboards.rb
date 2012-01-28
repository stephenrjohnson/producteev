module Producteev
    class Dashboards
      @api = nil
      def initialize(api)
        @api = api
      end

      def create(options = {})
        return @api.send_request("/dashboards/create.json",options)
      end

      def view(options = {})
        return @api.send_request("/dashboards/view.json",options)
      end

      def show_list(options = {})
        return @api.send_request("/dashboards/show_list.json",options)
      end

      def access(options = {})
        return @api.send_request("/dashboards/access.json",options)
      end

      def leave(options = {})
        return @api.send_request("/dashboards/leave.json",options)
      end

      def set_title(options = {})
        return @api.send_request("/dashboards/set_title.json",options)
      end

      def set_smart_labels(options = {})
        return @api.send_request("/dashboards/set_smart_labels.json",options)
      end

      def delete(options = {})
        return @api.send_request("/dashboards/delete.json",options)
      end

      def tasks(options = {})
        return @api.send_request("/dashboards/tasks.json",options)
      end

      def confirm(options = {})
        return @api.send_request("/dashboards/confirm.json",options)
      end

      def refuse(options = {})
        return @api.send_request("/dashboards/refuse.json",options)
      end

      def invite_user_by_id(options = {})
        return @api.send_request("/dashboards/invite_user_by_id.json",options)
      end

      def invite_user_by_email(options = {})
        return @api.send_request("/dashboards/invite_user_by_email.json",options)
      end

      def need_upgrade_list(options = {})
        return @api.send_request("/dashboards/need_upgrade_list.json",options)
      end

      def needs_upgrade(options = {})
        return @api.send_request("/dashboards/needs_upgrade.json",options)
      end

      def reorder(options = {})
        return @api.send_request("/dashboards/reorder.json",options)
      end

  end
end
